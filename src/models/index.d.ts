import { ModelInit, MutableModel, PersistentModelConstructor } from "@aws-amplify/datastore";





export declare class MerchantModel {
  readonly id: string;
  readonly name?: string;
  readonly joinedDate?: string;
  constructor(init: ModelInit<MerchantModel>);
  static copyOf(source: MerchantModel, mutator: (draft: MutableModel<MerchantModel>) => MutableModel<MerchantModel> | void): MerchantModel;
}