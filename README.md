## Road to Ternoa 1000 Nodes: $150K Incentive Program

Welcome to the Road to Ternoa 1000 Nodes incentive program! Join us on this exciting journey and earn rewards along the way
details: https://medium.com/ternoa/road-to-1000-nodes-150k-incentive-program-4d8ae95ede37

### 1. Connect to Substrate Contracts UI

Visit the [Substrate Contracts UI](https://contracts-ui.substrate.io/add-contract?rpc=wss://mainnet.ternoa.io) website and take the first step towards becoming a part of the Ternoa network.

### 2. Instantiate Smart Contract

#### 2.1 Use On-Chain Contract Address

Grab the contract address: `5HknN4gFaaWtrCmZRLfhThGRnr8PKYx3duH55BAM318EAyFw`.

#### 2.2 Download Metadata

Download the smart contract metadata [here](https://ipfs-mainnet.trnnfr.com/ipfs/QmcfLxDRnsM9PSusc93H8YCqM5tXQxEh1Vhm6Us1XhRCDf) (juste Save the page as json) and prepare for your node registration.

#### 2.3 Instantiate Contract

Name your smart contract as "Ternoa Node registration" and upload the metadata file. Let's get your node up and running!

### 3. Register your node name

Ensure you have some $CAPS (available on [gate.io](https://www.gate.io/)) in your wallet. Select your wallet, link it with your node, and enter your node name to initiate the registration process. Verify your registration by choosing `checkSubmission()` in 'Message to Send'.

### B. Getting Started with an Archive Node

Ready to dive deeper? Follow these steps to set up an Archive Node with Telemetry:

```bash
curl -sf -L https://raw.githubusercontent.com/Dedenwrg/ternoa-node/main/ternoa -o ternoa.sh
sudo chmod +x ternoa.sh
sudo ./ternoa.sh
```

Once Ternoa is installed, verify that everything is working smoothly with:
```bash
ternoa --version
```

Need to restart or stop the Ternoa service? No problem! Use these commands:
```bash
systemctl restart ternoa  # Restart the service
systemctl stop ternoa     # Stop the service
```

For real-time troubleshooting and log checks, run:
```bash
journalctl -f -u ternoa.service
```

Binary installs are available on our [GitHub Releases](https://github.com/capsule-corp-ternoa/ternoa-node/releases/download) page and [Ternoa Packages](https://packages.ternoa.network/ternoa/). Let's build the future of Ternoa together! 🚀
