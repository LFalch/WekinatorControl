/* 
 * Dette er et eksempel på, hvordan man sætter WekControl op.
 */

// De to objekter, der skal bruges til sende og modtage OSC (recv- er modtagelsesobjektet)
OscP5 oscP5, recvOscP5;
// Den addresse wekinator ligger på, når de skal sendes
NetAddress dest;
// Dette bruges til at sende kontrolbeskeder til Wekinator (se WekinatorProxy-filen skrevet af Fiebrink)
WekControl controller;

void setup() {
  oscP5 = new OscP5(this, 9000);
  controller = new WekControl(oscP5, dest);
  dest = new NetAddress("127.0.0.1", 6448);
  recvOscP5 = new OscP5(this, 12000);
}
