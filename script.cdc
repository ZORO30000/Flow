import Authentication from 0x05

pub fun main(account: Address): Authentication.Family {
    return Authentication.family[account]!
}
