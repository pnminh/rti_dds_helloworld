How to run the example:

1. Generate the code by doing:

%NDDSHOME%/bin/rtiddsgen -example <your_architecture> -language C++ ShapeType.idl

2. Compile the code. 

3. Execute the publisher in domain 34 (You can use another domain, but then you will need to change the Routing Service configuration).

objs/<your_architecture>/ShapeType_publisher.exe 34

4. Execute the subscriber in domain 35

objs/<your_architecture>/ShapeType_subscriber.exe 35

NOTE: Notice that the QoS file for both subscriber and publisher does not send the TypeCode and TypeObject:

<resource_limits>
<type_code_max_serialized_length>0</type_code_max_serialized_length>
<type_object_max_serialized_length>0</type_object_max_serialized_length>
</resource_limits>

5. Execute Routing Service using the provided configuration file:

%NDDSHOME%/bin/rtiroutingservice -cfgFile RTI_ROUTING_SERVICE.xml -cfgName RouteNoTypeCode

Publisher and Subscriber should communicate properly