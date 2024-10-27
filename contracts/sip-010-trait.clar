;; SIP-010 Fungible Token Standard Trait
(define-trait sip-010-trait
    (
        ;; Transfer from principal to principal
        (transfer (uint principal principal (optional (buff 34))) (response bool uint))

        ;; Get name
        (get-name () (response (string-ascii 32) uint))

        ;; Get symbol
        (get-symbol () (response (string-ascii 32) uint))

        ;; Get decimals
        (get-decimals () (response uint uint))

        ;; Get balance
        (get-balance (principal) (response uint uint))

        ;; Get total supply
        (get-total-supply () (response uint uint))
    )
)