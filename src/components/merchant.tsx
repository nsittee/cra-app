import React, { useEffect, useState } from 'react';
import { DataStore } from '@aws-amplify/datastore';
import { MerchantModel } from '../models';

export const Merchant = () => {
  const [merchants, setMerchants] = useState<MerchantModel[]>();

  useEffect(() => {
    DataStore.query(MerchantModel).then((values) => {
      console.log(values);
      setMerchants(values);
    });
  }, []);

  return (
    <div>
      {
        merchants && "Merchant Available"
      }
    </div>
  )
}
