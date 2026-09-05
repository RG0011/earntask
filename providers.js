const crypto=require('crypto');
function verifyHmac(rawBody, signature, secret){
 if(!secret||!signature)return false; const expected=crypto.createHmac('sha256',secret).update(rawBody).digest('hex');
 const a=Buffer.from(String(signature),'utf8'),b=Buffer.from(expected,'utf8'); return a.length===b.length&&crypto.timingSafeEqual(a,b);
}
function assertProviderConfigured(){ if(!process.env.PAYOUT_PROVIDER) throw new Error('PAYOUT_PROVIDER is not configured'); }
// Provider-neutral interface. Replace only this adapter with the selected provider's official SDK/API.
async function createPayout({amount,upiId,reference}){
 assertProviderConfigured();
 if(process.env.PAYOUT_PROVIDER==='mock') return {provider:'mock',providerReference:'MOCK-'+reference,status:'queued',amount,upiId};
 throw new Error('No real payout adapter installed for '+process.env.PAYOUT_PROVIDER);
}
module.exports={verifyHmac,createPayout};
