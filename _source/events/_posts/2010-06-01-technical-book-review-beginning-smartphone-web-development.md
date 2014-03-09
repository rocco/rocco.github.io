---
layout: post
title: Technical review for book "Beginning Smartphone Web Development"
date: 2010-06-01
banner: data:image/jpeg;base64,/9j/4AAQSkZJRgABAQEBLAEsAAD/4gxYSUNDX1BST0ZJTEUAAQEAAAxITGlubwIQAABtbnRyUkdCIFhZWiAHzgACAAkABgAxAABhY3NwTVNGVAAAAABJRUMgc1JHQgAAAAAAAAAAAAAAAAAA9tYAAQAAAADTLUhQICAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABFjcHJ0AAABUAAAADNkZXNjAAABhAAAAGx3dHB0AAAB8AAAABRia3B0AAACBAAAABRyWFlaAAACGAAAABRnWFlaAAACLAAAABRiWFlaAAACQAAAABRkbW5kAAACVAAAAHBkbWRkAAACxAAAAIh2dWVkAAADTAAAAIZ2aWV3AAAD1AAAACRsdW1pAAAD+AAAABRtZWFzAAAEDAAAACR0ZWNoAAAEMAAAAAxyVFJDAAAEPAAACAxnVFJDAAAEPAAACAxiVFJDAAAEPAAACAx0ZXh0AAAAAENvcHlyaWdodCAoYykgMTk5OCBIZXdsZXR0LVBhY2thcmQgQ29tcGFueQAAZGVzYwAAAAAAAAASc1JHQiBJRUM2MTk2Ni0yLjEAAAAAAAAAAAAAABJzUkdCIElFQzYxOTY2LTIuMQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWFlaIAAAAAAAAPNRAAEAAAABFsxYWVogAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z2Rlc2MAAAAAAAAAFklFQyBodHRwOi8vd3d3LmllYy5jaAAAAAAAAAAAAAAAFklFQyBodHRwOi8vd3d3LmllYy5jaAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABkZXNjAAAAAAAAAC5JRUMgNjE5NjYtMi4xIERlZmF1bHQgUkdCIGNvbG91ciBzcGFjZSAtIHNSR0IAAAAAAAAAAAAAAC5JRUMgNjE5NjYtMi4xIERlZmF1bHQgUkdCIGNvbG91ciBzcGFjZSAtIHNSR0IAAAAAAAAAAAAAAAAAAAAAAAAAAAAAZGVzYwAAAAAAAAAsUmVmZXJlbmNlIFZpZXdpbmcgQ29uZGl0aW9uIGluIElFQzYxOTY2LTIuMQAAAAAAAAAAAAAALFJlZmVyZW5jZSBWaWV3aW5nIENvbmRpdGlvbiBpbiBJRUM2MTk2Ni0yLjEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHZpZXcAAAAAABOk/gAUXy4AEM8UAAPtzAAEEwsAA1yeAAAAAVhZWiAAAAAAAEwJVgBQAAAAVx/nbWVhcwAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAo8AAAACc2lnIAAAAABDUlQgY3VydgAAAAAAAAQAAAAABQAKAA8AFAAZAB4AIwAoAC0AMgA3ADsAQABFAEoATwBUAFkAXgBjAGgAbQByAHcAfACBAIYAiwCQAJUAmgCfAKQAqQCuALIAtwC8AMEAxgDLANAA1QDbAOAA5QDrAPAA9gD7AQEBBwENARMBGQEfASUBKwEyATgBPgFFAUwBUgFZAWABZwFuAXUBfAGDAYsBkgGaAaEBqQGxAbkBwQHJAdEB2QHhAekB8gH6AgMCDAIUAh0CJgIvAjgCQQJLAlQCXQJnAnECegKEAo4CmAKiAqwCtgLBAssC1QLgAusC9QMAAwsDFgMhAy0DOANDA08DWgNmA3IDfgOKA5YDogOuA7oDxwPTA+AD7AP5BAYEEwQgBC0EOwRIBFUEYwRxBH4EjASaBKgEtgTEBNME4QTwBP4FDQUcBSsFOgVJBVgFZwV3BYYFlgWmBbUFxQXVBeUF9gYGBhYGJwY3BkgGWQZqBnsGjAadBq8GwAbRBuMG9QcHBxkHKwc9B08HYQd0B4YHmQesB78H0gflB/gICwgfCDIIRghaCG4IggiWCKoIvgjSCOcI+wkQCSUJOglPCWQJeQmPCaQJugnPCeUJ+woRCicKPQpUCmoKgQqYCq4KxQrcCvMLCwsiCzkLUQtpC4ALmAuwC8gL4Qv5DBIMKgxDDFwMdQyODKcMwAzZDPMNDQ0mDUANWg10DY4NqQ3DDd4N+A4TDi4OSQ5kDn8Omw62DtIO7g8JDyUPQQ9eD3oPlg+zD88P7BAJECYQQxBhEH4QmxC5ENcQ9RETETERTxFtEYwRqhHJEegSBxImEkUSZBKEEqMSwxLjEwMTIxNDE2MTgxOkE8UT5RQGFCcUSRRqFIsUrRTOFPAVEhU0FVYVeBWbFb0V4BYDFiYWSRZsFo8WshbWFvoXHRdBF2UXiReuF9IX9xgbGEAYZRiKGK8Y1Rj6GSAZRRlrGZEZtxndGgQaKhpRGncanhrFGuwbFBs7G2MbihuyG9ocAhwqHFIcexyjHMwc9R0eHUcdcB2ZHcMd7B4WHkAeah6UHr4e6R8THz4faR+UH78f6iAVIEEgbCCYIMQg8CEcIUghdSGhIc4h+yInIlUigiKvIt0jCiM4I2YjlCPCI/AkHyRNJHwkqyTaJQklOCVoJZclxyX3JicmVyaHJrcm6CcYJ0kneierJ9woDSg/KHEooijUKQYpOClrKZ0p0CoCKjUqaCqbKs8rAis2K2krnSvRLAUsOSxuLKIs1y0MLUEtdi2rLeEuFi5MLoIuty7uLyQvWi+RL8cv/jA1MGwwpDDbMRIxSjGCMbox8jIqMmMymzLUMw0zRjN/M7gz8TQrNGU0njTYNRM1TTWHNcI1/TY3NnI2rjbpNyQ3YDecN9c4FDhQOIw4yDkFOUI5fzm8Ofk6Njp0OrI67zstO2s7qjvoPCc8ZTykPOM9Ij1hPaE94D4gPmA+oD7gPyE/YT+iP+JAI0BkQKZA50EpQWpBrEHuQjBCckK1QvdDOkN9Q8BEA0RHRIpEzkUSRVVFmkXeRiJGZ0arRvBHNUd7R8BIBUhLSJFI10kdSWNJqUnwSjdKfUrESwxLU0uaS+JMKkxyTLpNAk1KTZNN3E4lTm5Ot08AT0lPk0/dUCdQcVC7UQZRUFGbUeZSMVJ8UsdTE1NfU6pT9lRCVI9U21UoVXVVwlYPVlxWqVb3V0RXklfgWC9YfVjLWRpZaVm4WgdaVlqmWvVbRVuVW+VcNVyGXNZdJ114XcleGl5sXr1fD19hX7NgBWBXYKpg/GFPYaJh9WJJYpxi8GNDY5dj62RAZJRk6WU9ZZJl52Y9ZpJm6Gc9Z5Nn6Wg/aJZo7GlDaZpp8WpIap9q92tPa6dr/2xXbK9tCG1gbbluEm5rbsRvHm94b9FwK3CGcOBxOnGVcfByS3KmcwFzXXO4dBR0cHTMdSh1hXXhdj52m3b4d1Z3s3gReG54zHkqeYl553pGeqV7BHtje8J8IXyBfOF9QX2hfgF+Yn7CfyN/hH/lgEeAqIEKgWuBzYIwgpKC9INXg7qEHYSAhOOFR4Wrhg6GcobXhzuHn4gEiGmIzokziZmJ/opkisqLMIuWi/yMY4zKjTGNmI3/jmaOzo82j56QBpBukNaRP5GokhGSepLjk02TtpQglIqU9JVflcmWNJaflwqXdZfgmEyYuJkkmZCZ/JpomtWbQpuvnByciZz3nWSd0p5Anq6fHZ+Ln/qgaaDYoUehtqImopajBqN2o+akVqTHpTilqaYapoum/adup+CoUqjEqTepqaocqo+rAqt1q+msXKzQrUStuK4trqGvFq+LsACwdbDqsWCx1rJLssKzOLOutCW0nLUTtYq2AbZ5tvC3aLfguFm40blKucK6O7q1uy67p7whvJu9Fb2Pvgq+hL7/v3q/9cBwwOzBZ8Hjwl/C28NYw9TEUcTOxUvFyMZGxsPHQce/yD3IvMk6ybnKOMq3yzbLtsw1zLXNNc21zjbOts83z7jQOdC60TzRvtI/0sHTRNPG1EnUy9VO1dHWVdbY11zX4Nhk2OjZbNnx2nba+9uA3AXcit0Q3ZbeHN6i3ynfr+A24L3hROHM4lPi2+Nj4+vkc+T85YTmDeaW5x/nqegy6LzpRunQ6lvq5etw6/vshu0R7ZzuKO6070DvzPBY8OXxcvH/8ozzGfOn9DT0wvVQ9d72bfb794r4Gfio+Tj5x/pX+uf7d/wH/Jj9Kf26/kv+3P9t////4QDIRXhpZgAATU0AKgAAAAgABwESAAMAAAABAAEAAAEaAAUAAAABAAAAYgEbAAUAAAABAAAAagEoAAMAAAABAAIAAAExAAIAAAAPAAAAcgEyAAIAAAAUAAAAgodpAAQAAAABAAAAlgAAAAAAAAEsAAAAAQAAASwAAAABUGl4ZWxtYXRvciAzLjEAADIwMTQ6MDI6MDcgMTE6MDI6NjEAAAOgAQADAAAAAQABAACgAgAEAAAAAQAABkCgAwAEAAAAAQAAAQQAAAAA/+ECJWh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8APHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iWE1QIENvcmUgNS40LjAiPgogICA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPgogICAgICA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIgogICAgICAgICAgICB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iCiAgICAgICAgICAgIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyI+CiAgICAgICAgIDx4bXA6TW9kaWZ5RGF0ZT4yMDE0LTAyLTA3VDExOjAyOjYxPC94bXA6TW9kaWZ5RGF0ZT4KICAgICAgICAgPHhtcDpDcmVhdG9yVG9vbD5QaXhlbG1hdG9yIDMuMTwveG1wOkNyZWF0b3JUb29sPgogICAgICAgICA8ZGM6c3ViamVjdD4KICAgICAgICAgICAgPHJkZjpCYWcvPgogICAgICAgICA8L2RjOnN1YmplY3Q+CiAgICAgIDwvcmRmOkRlc2NyaXB0aW9uPgogICA8L3JkZjpSREY+CjwveDp4bXBtZXRhPgr/2wBDAB4VFhoWEx4aGBoiIB4kLUsxLSkpLVxBRTZLbF9ycGtfaWd4h6ySeH+jgWdplcyXo7K3wMLAdJDT4tG74Ky9wLn/2wBDASAiIi0nLVgxMVi5e2l7ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubm5ubn/wAARCAEEBkADASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwDCam05qZQUxaKKKCQooooAKKKKBiikPWlHSkNABQKKKAFoDYpKKAJA5NBJpgYjpRuNADt3vRmmk5pVXNICcNFs561HnnilCACnbaAGHcaUD1qQLmneX60AQ4pdtSbQKXigCLy6cI6dupC1ABtApDjtRmkzQAuaSjrSEUALxRmm0uKAFzSUHimlqAFozTNxo5oARutIKU5pKBi0uKQCpUSgaGrGWqYRACngYFBpDsVZFwajqeUZ71BTRLDNFFFMQUUUUAFFFFABRRRQAUUtFACUuKKWgAxRS0UAFKKKQUAOFLxSHpQKQBRilpMUAJS5pCKMUAGTS9qBTqAGEUlOamd6AFFOxScCjNAC0lABopgFLgUmKXAoADjtScmlOKTNAC7aTpS7jTSeaQATQGpDSUwFPNKqkmkFTJSAcsKgZNKFAPFFJQBYVsDFOHNVgamjbHWgCYCloUgig4pgNJpDS4pCMUANFKKSlFIaFoJxRRQAgNFHSmlgOpoAWlqJplHSm+a7fdFAifHvTS6jqajEcj9TinG2VfvNmgYxp/7tNzI/SpNqL0FLvPYUARiFm+8akEUadeaBubqacFUdTQITeo6ClyTTGZVPFRmY9BQBP+NDLkcVW81qcszDrQArpwciqrDBrQV1kGD1qlOMNQBFS0lLTEFFJS0AFFFFABRRRQAUUUUAPSTbwaRjk02igApKWkoAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigApRSUtAC0UUUAFFFFAxKKWkoAKKKKACiiigQUhpaKAG0tLiigBKKKKBhU8Ee45pkSbmq/GgUcUgHKAopc0mKAKQxSaaTSmmmkMb3p3QUYprHFADHNRGnsaYaAGkU3FPNNNMQw0ClNIKYFmE1fiPFZ0XWr0JpAWhU8YqBKnSmBYWngVGpqQGmA8U7NMBpc1QD91OzUOaN1AiQmozSF6TeKAAqKTbzSlqbuoAXFGKAaUc0AKFzS4pVpcUwG7c0hWngYoJpAQuKVBg040qikBIopWUEUgpwoGVpo+OBTISQcVbYZFQNGQcgUAcY1JStTaQMWikpaBBRRRQIKKKBQMkWMkU1kK9aejYokcEUARUu04zShgKVnyMUAMooooEFFFP3DbjFAxFQt0qdLdh1qKOTaanE+R1oAcEA60uFFRl/emF6QE29RSF6gLUb6AJc5pM1F5ho8w0AS0mM00SU4y+goAXbTS2KUSetNd1PSgBN5oz602lxQA4MBS7x2phFJQA4nNGKBingCgBAvtTsAU0k0ZJoAaw5pMVOGUDpUEh54oGKtSrVfcaehJpFJloYqOR/Sk6dTSHBFAXHwxiUEmqsg2yEVo2Ee7NUbpds7CmiSKiiimIKXFFLQAmKKWkoAKKKKQBRRRTAUUuaSigBaKKSkAtAopQaYC4pQKQmkzSAfmmk0uaTFABSE06kNACU6m0uaAFphp2RTTQAUUoFLigAFIaXNJQAlJS0UwFFGRSUUAKSKbS02gAozSUUAOWn5qIdacM0ASq9SAg1AKcDSGTYo5FNVqeDmkAquRUofNQlaACKYFgOKQnNQ7qXfxQIlFL0quZwvSmCR5Dhe9Ayw0ir3qNrkdAKkSwlYZc4FSCO3h6nc1MRWHmyfdBp6WrE/vTtqY3R6IgH4VGzM/LNSAUwwR98mk8wD7i0z5BSGUAcUAOLO3tSYA+8c1GZSaYWJoAmLKKaZfQVFmjNADzITSbj602koAUmkzRRQAUuKSloAUEqaSQb+aDmm5oAixilp5AIqOmIWiiigAoopKAFopKKAFopKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAoo6UUAFFFFABRRRQAUtJS0AFGaKSgBc0UlFAC0tJS0DCkpaSgAooooEFFFFAwooooAKcqbjSCrMAHcUgJYYwoqQmk7UUhjgadmoxTs0hiGkoJpM0AFMan9qY1AEZppp5FNIoAaaaacabTENopTSUATRdavRCqUXWr0fSgCylToarA1KhpgWlp+ahQ1MKYAKeKTgUhamA4mo2NBamFs0wAmk30h5pMGkA7dRk0YpQKADJp6Gm4pyjFMCZadTA2BRvoEKaQ5o3UucigCOnrTaUGgB+aelMFSKaAA8UDmlYcUxGwaQHDNTalkTFRUgCilpKAFooooEJRS0UAL2pKU9KbQMUUHilU7TmhyGPAoASkpaSgBaKMUuKAEoyaKKAHBqQmkHWpUj4yaQEdFSHbmmnFADaSlNJTAWjNJRQAuTSUUUAOU4qVAzdBUHepUmZRgUgLK2zSD5RmoZYjEcN1qSG9eHNQTTtO+5qABBuPWn4xUIOOlPBPrQA89KZg07OakVUI5NAyMGo5OTU8mEHFVycmgBuKlTio6etMB7Gm7+aGBPSozmkBr6YQSRmqN+MXLU22dt3ytii5B3ZJzQMgooopkhRRSigYUUUUgCilxRigBMUUpFJQAUUUoFAhMUGnZxTTzQAuOKBSCnDFMAJ4ptPNIFpAKp4pc0AYozQAGm5pSaQUwFpKC1IDQA7FJ3pc+lMNADwRSE02igBaKUCkpALTTQaBTAKKWjFACUhpSMU00CCiiigAFOBptLQMdmlBpuaUGkMeDTw1R5pelAEweng5quGp6vikBIy1CxPQU9pOKaozzTAiPXmp4X2fdGTULHnFSxjaM0CLDfaJB877RUXyoeuTUckrN3qPdQBYMo7VGZCaZmigBck0nNFLQAlFLRQAYooooAKKQmkzQA6jIpuaTNADs0m6k5oCE0ABem9amWAnrUqwAdaYFUZFIwqxLFjkVBQAyloNFAgpKWkoAKKKKAFopKKAFpKKKACiiigAooooAKKKKACiiigAooooAKcpxTaKAFY5NJRRQAUUUUAFFFFACinquaYtTKeKAECUFKfmikMiMdMIIqc01hmgCHNLQwxSCgB1JS0lMQUUUUAFFFFABRRRQMcgq1EpqKFc1aUYFSMdikNLTTSGGaM0lFAC0lGaKADNIaXFJQAlNIp9IaAI2WoyKlNMNMQw0nelNJQBNEavxHis+LrV6LpQBYFSx1EtSpTAsIKmFQpU1MBrGoyeae1RmmAZpQM0lPUUAKFpcClxRigBpopdtGKYDc0A0pphpAP3U8VCp5qVaYh1FANB6UAIaUHikAJpSKYD1qRDzUINSIc0gJW+6agB+apj92oD1pAchN0qvViTlar0gFooooEJS0UUAFFFFAC02lNJQMKcrFTkjNJSfjQIlaRW/hApPlqOloGS/LTTimZozQA7C+tGBQMd6THpQBPFECcmiZgnApkTkNjNLcUgIutGMUgpSc0wEooooAKKKKACiiigApy02jNADnplKTmkoAXNPVqjpwoAfmlBptApDHk5qMin5pwCkUARYqRFJo8vmpgpVaAIyCtJtDGkZyWqVDntSAYqFGzTpuRUjnjpTXA2ZoLRVxRSk0lMhhRRS0wEpaKMUhiiigUtADTRinUlACUtFOAFAhlFKeKbmgQtApKUUAO5pM4oyaSgB26mk0UmaYC0UmaKAA0UYpKAHUhFFFACUopMUooAUmikpc0AAFHSjdRQAZpQ1JTc0AKxzTaKKBBRRRQAUUUUAFKDSUUDHg04VFTg1AElHTvUZalX60hiucUokwtNbmmUASLy2amJ+Wq6nFTo4PBoERkUmDVhlBGRUWw0ANzS5pGQ0zkUAS0VGGozTAfkUbhTKSkA/cKQtSYoxQAuRRTlTNSLbs3QUwIlGakWPJqxHYueoq1FY46mnYClsAHSnRxkngVprajPSphbKtOwiglqxqT7Lt61b4Q015lxRYClLANtZkybGrXeVfWs67IJ4pAVDTacaSkAUUUlABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFFFFABRRRQAUUUUAFJS0UAKKcrYpoooAmHIpahDGgsaQyUsKTdUW6jdQArc02lzSUwFooFLQAlFFFABRRRQAUoHNJT1HNICzEMCpc1HH0pxNIY7NJSUUhi0UCloASiiigBaSlFFADaSnmmmgBjCmGnsaYaAIzSYp2KMUxEkdXYqpJVyGgCyo4qReDTF6VIo5poCxHU/aooxxU3aqAjaozUrCmYoARVzUgAFM3YpjS0AT5FG6qhm5oE1AFrdSE1CJM07dmgBSaQ0UtAAoqTOBTBS0wFU81ISMUwYoJoEOU0rUwGgmgBRUsVQipo6AJu1V2OGqx2qvLwaQHIsPlquetWnIC1VPWpAKKKKYgooooAKKKSgBaSlooAKKSigBaKSigBaSiigBaM0UUAHegknvRSUDFooooEFFFFABRRRQAUUUlAxaKKKAEpRRRQIWlFNpRQMdRRRSGFJnFLRQBLE/NSSsdtQpxU5KbOetICqpy1WYwc9KqnIfirMMhyKAJ5UO3NREZjqWViVqMcqaRoioetAFK33jSZqkQwxQaM0UCAUuKSnUDClopaQxtGKdSUAJiiilpiGmkpxpMUCG04UnSkzQIcTTM08KT0FL5TelADKSpfIfHSmmJx2ouAyinFCOtFACAGnhM03NPUjFMBh4OKSnNSA4oATFAFKWyaBigAIptONNoAUUtJ2pM0AKaaaUmkoEFFFFABRRRTAKSlopAFFFFABRRRQAUoNJRQMdnNIaBQaBiUoJBpKKBEyy9qnQhhVPFPSTb1pDLmwEVBLHipoXDcZqVogVoAzSMUDmnyrtNRg0CHYpyIScYqxaRea2MZrUj08jB2UxGUtsasR2e7qK2I7D1FTLbrH1FOwGbFYgdFq3FZEc4xV4GNRngVFJeRr3FMBgtsc0MqjvVefUUHCmqE1+c8GmBpPKsfUiq0t6oHBrJlumfq1VzIfWlcDRlvdx4NQPdE96p7iaTNK4E5mJNNkbIqHNKWJpXGFJRRQIKSlpKACiiigAooooAKKKKACiiigAooooAKKKKACiiigBKWiigAooooAKKKKACiiigAooooAUUtIKdQA2ilooGNopcUYoEJS0tFACUtFFAwooooAKKKKAAVKi5qNRzVmNcCkA4cCjNKaTvUlDhS0gFLQACikooAUUtNpc0AOoxSZpRQAUxhT6Q0AREU01IajNADaKWkpgOTrVuGqidatw0gLadKnjXJqBOlWIqpCLKDin01OlOqgEIqJjipWqFxmgCJ2qFsmpinNOCCgCrtNKFNWfLpVjoAhVSKkFSFABTQKAFFLQBS4oAUUZFIaSmA7NLTFzT+lAhcU00FqZu5oAlWpVNQqadupgWFNRTUqHimStxSA45iT3qOn9qbUgJS0UUCCiikoAWkoooAKWkooAKKWigBKKKKAClpKWgAopKWgAooooAKKKKACiiigApKWigBKWiigAooooAKKKKAClpKWgYZpQaQ0lIB1KKbmnCgY9amVAU5qEGrCkhDmkBTbAcip4dpNV2++afG+DTAvuBtpqLuGBUSy7uKuQ7Ewc1JaKslhJjcKqvGyHBFbb3Ear96sy6nSQ/KKpEsq0oGaSigQtOFNFOFBSFpaKKRQUlLSUCCiiiglhTTTjSdaYhuM1IkZPap7e1aTkjAq3HEpO1am47FeOIAcinEAVZaLbVdxilcdgBpCwphOBTN3NAiV1Rh0qpJGVPHSrGc04AEYNO4FDFKKlmTaaiAz0qhAetFB4NJTEBpKWkoAKKSloAKSlpKBBRRRQAUUUUAFFFFABRRRQAUUUUAFFJS0AFFFFAC0Gig0DEooooAXNL1pKBSGOVihyKtx3BK8mqdAOKAJpmBqDvTi2RTe9MRr6QwWUZro5ZVRAxxXH2s/lsDV6bUWZNueKEI1pNRRegqrNqmRxxWM1yc9ageRmPWncDRl1F243VUkuWb+I1WLUhNFwJDKT3ppYnvTKKQC5opKKACiiigBaKKWgBKKWkoASiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigBRS0CloGFJS0lIBaSiimAUUUUAFFFFABRRRQAlLS4pQtIBU61aQfLUMaVYHSkMaaAKUigUhi0lGaKACkNFIaADNGaY1ANAEopRTAacDQA+kNFBoAYajapDTDQA2kpcUYoAVOtXYapp1q5D0oAtIOKnjFQx1ODiqQiwnSpKiQ8VKKoBDUZHNSGmGgBuBS4pCabvxQA8ikzUZkoDZoAeTmmikzRmgB9OFRbqcG4oAVqQUZyaXFADloakFKaYEbGm96V+KZmgCUGlBqMNShuaALCtgVDK+acWwKrO2WoEc12ptOHSm1KBhRRRQIKSlpKACiiigApaKKACiiigBKKWkoAKWkpaAEpaKKACiiigAooooGFFFFABRRRQIKKKKAAUtAooGJRS0UCEpRRS0DCkpaMUAJRTsU1qAFV8VIZyRioKUUAKRzmlA4o7Uo6UgFTrV1eUqknWryf6ukzWJUlyG61FmpZ/vVFTREgooopiFpwplOFIpDqWkFFIoKKKKCQooopiE71btbbzGBI4qvEpZxWxbqFQVLY0iysaiDCjtWZudJSMGtIOQKVY0d8kDNZXKsV442YbmqCeIjnFbP2dCmMgUn2GIryc07knNsKbitO7sNrHYKpPbSL/CcVSYiIHmngcUzaQeacAcUwCRQ61TztJFXhx1qnMPnJqkJjM5NLxSUVQgoxSUtACUUUUABpKKKACiiigQUUUUAFFFFMAooopAFFFFABRRRQAUUUtACUUtFAxKKXFFACUtJS0gClptLQMSilNJTEPj60rsRxTAcUE0CDNGaSigAooooAKKKKACiiigAopaKACiiigAooooASiiigAooooAKKKKACiiigAooooAKKKKACiiigAooopgFFFFIAooooAKKKKACiiigAooooAcKWkFOoGJRRRSAKSlooASiiigAooopgFFFFACinrTBTw2KQEyVLUKMKmA4pDEozQaTNIYGikNANAxaKSgmgBrU0UpNAoEPAp+KatOoAWiikJoAaxqM05jTaAFA4pKXtSUAOTrVyKqanmrcRzTAtJU61DGKnQU0IljNS0xBT6oAJpjGlao2OaAGk0w041GxoAKcKavNOoAXNITTScUgOaQDwaXNMBozQBKnJqSoUNSZpgOzSE0lNJoAa3JpMUuaUCgBppFbmlfpUYPNAExbiq5PzU8nioSfmoAwRTTSnrSVKBhRRRTEJS0UUCEooooAWkoooAWikooAWkpaSgApaSloAKKKKACjFFGaACiiigAoopaAEopcUYoASlxS0UDCikooAKKXFLtNADaWnBTS4FIBopduadwKM0ANxikbpTiaaelAEdKKSlFMB3anfw0J1pz4A4oAROtXU+5VGPrVlWOMGpZpFkU4+aoanmqGhCkJiilzxSUyApwptLmgY6ikzS0FC0lFFIQUZpKUDJpgWrVOc1oI+OKqRDYlSK3es5FItF+KdFvPIqrvq9b3MaRYPWosO41nkdwGYgVfhdFTANZjP5j5XpTy7KMA0BY0wEY5ODRJGhX7oNZsU7A9avQ3CnhjzQiWjLvIEBJxiqRX0rpZraO4Xkc1kXVi8RJUcVYilsOKpXHDVfyynDVRuT81UgZDRSUuKokSilpCaYBRRSUAFFFFABRRRQIKKKKACiiigAooooAKKKKACiiigApaSigCQLkUuymBiKUuaQx2AOtMbHakzmigBKKKKYBS0lFAC0lFFABS0lFAgpaSloASiiigAooooAKKKKAClpKWgAopKKAFoopKACiiigAooooAKKKKACiiimAUUUUgCiiigAopKWgAooooAKKKKACiiigAooooAKKKKACiiigB4paapp1IYhpBSmkFAC0UUUwEopaKQCUUUUwCiiigAzRmiigB6HmrcZyKpZqeB+cUhlhhURODUx5FQvSGGc0A0BeKOlIANNJpxphoGFKKbT1oEPUU/FNWn0ANNNJpzVGaAENJS0lABSGlpKYhVPNXIDVNetXIKBl6Op0qvH0qwlMRMo4paFp2KoBhphFSGmEUARNUeM1MVphGKAG9KRmxQzYqB3oAcz5pymoFPNSZpASbqQtTc0g60ATocCnbqjB4pQaAJQaRjSA8U1jTAB1p/aowadmgBrmos4p7momOKAHFqiJ5pSabmgDD70Ud6KkGFFJRTELRSUtAgoopKAClpKKBi0UUUAFJS0lAgooooAWkopaACiiloGJRTqTFABilwKMGjBoAKKdsNKE9aQEdLipMAUuR6UARhSe1P8vA5pRmgg+tACAAUufakxTgKAGk5pMU8ikxQAmKNtLRQAmKRhxTqRulAEJooPWkpgSIMnFTG3cjIFQIQGGelXfOCr8tICqqbTz1qZW5ANKyM3zHpTP4qTKQsw4qDtVmUfJVahDk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DSCgmkzQIcKWm0tACGiiigAp60wCnimA7NLmm5ozSAfmkzSZozQMcDTg1R5pRTAkzSg0wUuaBEitT93FV92KeG4oAcxzUbmgtUbNQMaTzSZpp60tADs05TUYpwOKQEuaF5NMBqRKYixGOKeaalP60wGDrUw6VH0NPB4pgIxqvIeamY1A3JpAR5waM0jdaQGkAj81AetSseKhJ5oAhh+9Uk/SiigtbDE6UkgoopiIaWiimQwooooEFJRRQAUUUUAFLRRQAlLRRQAUlFFAxaKKKACiiigQUUUUAJS0UUAFFFFAwooooEFKKKKAFam0UUDCiiigAp1FFACGkoopAKtSCiigBdoNSxoMdKKKBjZulVhRRQA6koopiENJRRQIKWiigAooooAVRUiiiigY5uBUXeiigApKKKACiiigBKKKKACiiigQUUUUwCiiikAUUUUAFFFFACUtFFACUtFFABRRRQAUUUUAIKdRRQAhpKKKBhRRRQIKWiigApKKKACiiigApaKKACiiigBKKKKYC0UUUgCiiigApcmiigApKKKBhSUUUCCloooAKKKKACiiigAooooAKKKKAEooooAWiiigBKKKKACloooASiiigBaKKKYBSUUUgFooooASiiigApaKKACiiigAooooAKWiigAooooAQ0o60UUgLlui7c4qyOBRRQUhKKKKQxaaaKKACkoopAFFFFAEbdaQ9KKKAGiloooAaaKKKBCiiiigBaKKKAFpaKKACloooGFFFFAC0ooooAcKKKKAGk0uTiiigBCTTGoopgNooopAKKU0UUAC9asJRRTETLUgoopgIetPHSiigCFzUdFFADGqLNFFIBrdKioooA//2Q==
---

Amongst [James Pearce](https://www.facebook.com/jamesgpearce) and [A. Todd Emerson](http://www.linkedin.com/in/toddemerson) I was one of the technical reviewers for Gail Frederick's and Rajesh Lal's Book ["Beginning Smartphone Web Development"](http://www.amazon.com/dp/143022620X/).

[![Yay Rocco in a book](/images/apressbook.jpg)](http://www.amazon.com/dp/143022620X/)

## Learnings

The book turned out pretty good.
Technical reviews mean a lot of work if you do it right.
I was even able to point out some minor problems.
Other than that Gail and Rajesh did a great job and the book was a good intro to web development on mobile phones back in the days.
Yay, I'm in a book!