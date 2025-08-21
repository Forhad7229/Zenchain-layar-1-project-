async function main() {
    const NFTMint = await ethers.getContractFactory("NFTMint");
    const nft = await NFTMint.deploy();
    await nft.deployed();
    console.log("NFTMint deployed to:", nft.address);
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
