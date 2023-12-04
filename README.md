# state_by_zip

Single purpose gem to find US states by ZIP codes. It takes the idea of matching ZIP codes against SCF prefixes from https://github.com/monicao/zip-code-info, but is also adjusted for special cases like "00210".

The gem doesn't call external APIs and the lookup data is less than 10kb.

In case of ZIP codes spreading across multiple states only the primary one is returned (as shown in https://www.unitedstateszipcodes.org).

## Usage
```
StateByZip.find(12345)
# => "NY"

StateByZip.find('00987')
# => "PR"
```

## Alternatives
If you need to identify cities or time zones you can use  https://github.com/monterail/zip-codes instead.
