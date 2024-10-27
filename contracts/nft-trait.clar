;; NFT trait definition
(define-trait nft-trait
    (
        ;; Last token ID, limited to uint range
        (get-last-token-id () (response uint uint))

        ;; URI for token metadata
        (get-token-uri (uint) (response (optional (string-ascii 256)) uint))

        ;; Owner of a token
        (get-owner (uint) (response (optional principal) uint))

        ;; Transfer token 
        (transfer (uint principal principal) (response bool uint))
    )
)