### Registration Process Guide, Setting Up an Archive Node ternoa

**Registration Process Guide**

1. **Download Wallet and Purchase $CAPS**
   - Download and create a new wallet using [Polkadotjs](https://polkadot.js.org/).
   - Purchase $CAPS on Gate.io for transaction fees (approximately 10 $CAPS).

2. **Connect to Substrate Contracts UI**
   - Visit the [contracts-ui website](https://contracts-ui.substrate.io/add-contract?rpc=wss://mainnet.ternoa.io)
   - Disregard other network options in the dropdown list.

3. **Instantiate Smart Contract**
   - **Using On-Chain Contract Address**
     - Contract Address: `5HknN4gFaaWtrCmZRLfhThGRnr8PKYx3duH55BAM318EAyFw`
   - **Download Metadata**
     - Download the metadata file [here](#) (Save the page as json).
   - **Instantiate Contract**
     - Name the contract as "Ternoa Node Registration" and upload the downloaded metadata file.

4. **Register Your Node Name**
   - Ensure you have some $CAPS in your wallet.
   - Select your wallet to link with your node.
   - Enter your desired node name in the "name: String" field.
   - Click on "Call Contract".
   - To verify registration, select `checkSubmission()` in the 'Message to Send'.

**Setting Up an Archive Node with Telemetry**

Follow these steps to set up an Archive Node with Telemetry:

```bash
curl -sf -L https://raw.githubusercontent.com/Dedenwrg/ternoa-node/main/ternoa -o ternoa.sh
sudo chmod +x ternoa.sh
sudo ./ternoa.sh
```

Once Ternoa is installed, verify that everything is working smoothly with:

```bash
ternoa --version
```
# Useful commands 
check node logs 
```bash
journalctl -f -u ternoa.service
```
restart node 
```bash
systemctl restart ternoa  
```

stop node 
```bash
systemctl stop ternoa
```
**Telemetry Monitoring**

Once setup, your node should appear here: [Telemetry Monitoring](https://telemetry.polkadot.io/#list/0x6859c81ca95ef624c9dfe4dc6e3381c33e5d6509e35e147092bfbc780f777c4e)

Binary installs are available on our [GitHub Releases](https://github.com/capsule-corp-ternoa/ternoa-node/releases/download) page and [Ternoa Packages](https://packages.ternoa.network/ternoa/). Let's build the future of Ternoa together! 🚀
