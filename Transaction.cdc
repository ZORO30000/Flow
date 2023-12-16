import Authentication from 0x05

transaction(Name: String, Guardian: String, MemberCount: Int, account: Address) {

    prepare(signer: AuthAccount) {}

    execute {
        Authentication.addFamily(Name: Name, Guardian: Guardian, MemberCount : MemberCount , account: account)
        log("Done.")
    }
}
