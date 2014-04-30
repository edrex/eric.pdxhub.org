OHAI

What are Servers for?

Servers mediate between the various peers connecting.

They have a single-minded focus: the application, and are expected to be "stable": always available, and behaving in a predictable way, whereas other peers may drop on or off the network, change their behavior, or stop participating entirely.

Servers also represent authority in the domain of the application. For applications which involve changing state, they provide a canonical shared state, and act as the gatekeeper for clients wishing to modify state.

This is all very philosophical. Lets boil it down to essentials. An application server performs these primary functions:

 - Have interfaces for data storage and retrieval
 - Have interfaces for reporting. 
   - This is technically optional, since clients could simply perform the computations necessary to produce reports themselves, but this is problematic for large data sets. For the web, where connections often have low throughput, reporting is practically necessary for data sets larger than a few hundred records.
   - 
