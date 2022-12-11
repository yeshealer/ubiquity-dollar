import { OptionDefinition } from "command-line-args";

import { DeployFuncParam } from "../../shared";
import { create } from "../create";

export const optionDefinitions: OptionDefinition[] = [
  { name: "task", defaultOption: true },
  { name: "network", alias: "n", type: String },
];

const func = async (params: DeployFuncParam) => {
  const contractInstance = "src/dollar/UbiquityFormulas.sol:UbiquityFormulas";
  const { env, args } = params;
  const manager = args.manager;

  const { stderr } = await create({ ...env, name: args.task, network: args.network, contractInstance, constructorArguments: [] });
  return !stderr ? "succeeded" : "failed";
};
export default func;
