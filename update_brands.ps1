$brands = @(
    @{ name = "anzco-beef.webp"; url = "https://www.anzcofoods.com/assets/Uploads/ANZCO-Foods-Beef-Logo-V2__FocusFillWyIwLjAwIiwiMC4wMCIsNjEwLDYxMF0_ExtRewriteWyJqcGciLCJ3ZWJwIl0.webp" },
    @{ name = "greenstone-creek.webp"; url = "https://www.anzcofoods.com/assets/Uploads/Greenstone-Creek-by-ANZCO-Foods-Logo__FocusFillWyIwLjAwIiwiMC4wMCIsNjEwLDYxMF0_ExtRewriteWyJqcGciLCJ3ZWJwIl0.webp" },
    @{ name = "stony-river.webp"; url = "https://www.anzcofoods.com/assets/Uploads/Stony-River-Black-Angus-by-ANZCO-Foods-Logo__FocusFillWyIwLjAwIiwiMC4wMCIsNjEwLDYxMF0_ExtRewriteWyJqcGciLCJ3ZWJwIl0.webp" },
    @{ name = "ocean-beef.webp"; url = "https://www.anzcofoods.com/assets/Uploads/Ocean-Beef-by-ANZCO-Foods-Logo__FocusFillWyIwLjAwIiwiMC4wMCIsNjEwLDYxMF0_ExtRewriteWyJqcGciLCJ3ZWJwIl0.webp" },
    @{ name = "anzco-lamb.webp"; url = "https://www.anzcofoods.com/assets/Uploads/ANZCO-Foods-Lamb-Logo__FocusFillWyIwLjAwIiwiMC4wMCIsNjEwLDYxMF0_ExtRewriteWyJqcGciLCJ3ZWJwIl0.webp" },
    @{ name = "maimoa-lamb.webp"; url = "https://www.anzcofoods.com/assets/Uploads/Maimoa-Lamb-by-ANZCO-Foods-Logo__FocusFillWyIwLjAwIiwiMC4wMCIsNjEwLDYxMF0_ExtRewriteWyJqcGciLCJ3ZWJwIl0.webp" },
    @{ name = "angel-bay.webp"; url = "https://www.anzcofoods.com/assets/Uploads/Angel-Bay-by-ANZCO-Foods-Logo__FocusFillWyIwLjAwIiwiMC4wMCIsNjEwLDYxMF0_ExtRewriteWyJqcGciLCJ3ZWJwIl0.webp" },
    @{ name = "burger-patties.webp"; url = "https://www.anzcofoods.com/assets/Uploads/ANZCO-Foods-100-Beef-Burger-Patties__FocusFillWyIwLjAwIiwiMC4wMCIsNjEwLDYxMF0_ExtRewriteWyJqcGciLCJ3ZWJwIl0.webp" }
)

foreach ($b in $brands) {
    Write-Host "Downloading $($b.name)..."
    curl.exe -s -H 'User-Agent: Mozilla/5.0' -H 'Referer: https://www.anzcofoods.com/' $b.url -o "public/brands/$($b.name)"
}

