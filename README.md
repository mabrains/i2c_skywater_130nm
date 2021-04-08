# I2C implementation on Skywater 130nm
### **Intro to I2C**
I2C is a device that is used to connect multiple masters-slaves having 2 connection lines with each other and arrange between them for reading/writing data.  
Basically, these 2 connection lines are **SDA** and **SCL**.  
The SDA and SCL lines initially are pulled up through resistors as the I2C is an open drain device _(i.e active low)_  
For any master to _start recieving (reading from a slave)/transmitting (writing on a slave)_, it should be the **first master to pull SDA line down**  
After that, the master sends the slave address that the master wants to communicate with _(7 bits address and 1 bit for read/write)_  
The slave then replies back by an _ACK/NACK_ signal  
If an ACK signal recieved, the master sends the slave’s register address _(8 bits)_ to _read from / write to_  
The slave then replies back by _ACK/NACK_ signal  
If an ACK signal recieved, the master begins to _send/recieve_ data in _8 bits_, then waiting for the _ACK/NACK_ signal after every _8 bits_ of data to decide what to do next **(either continue sending data on ACK signal OR decide how to proceed with the slave upon NACK signal is sent)**  
The **clock** signal on SCL line is generated through the I2C device


For more details to see visual signals click [here](https://howtomechatronics.com/tutorials/arduino/how-i2c-communication-works-and-how-to-use-it-with-arduino/) , you'll find a 10 minutes video explaining the way I2C works

![I2C connecting multiple masters-slaves together](I2C_image_1.png)

### **I2C PnR flow**
