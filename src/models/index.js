// @ts-check
import { initSchema } from '@aws-amplify/datastore';
import { schema } from './schema';



const { MerchantModel } = initSchema(schema);

export {
  MerchantModel
};