import { ethers } from 'hardhat';

async function main() {
  // Hardhat 네트워크에서 첫 번째 계정 가져오기
  const [deployer] = await ethers.getSigners();

  console.log(`Deploying contracts with the account: ${deployer.address}`);

  // DataType 컨트랙트 팩토리 가져오기
  const DataType2 = await ethers.getContractFactory('DataType2');

  // 컨트랙트 배포
  const contract = await DataType2.deploy();

  // 배포 완료 대기
  await contract.waitForDeployment();

  console.log(`DataType contract deployed at: ${contract.target}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
