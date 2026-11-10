.class public abstract Lbu;
.super Lbo;


# direct methods
.method public constructor <init>(Lr;ILjava/io/Reader;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lbo;-><init>(Lr;ILjava/io/Reader;)V

    return-void
.end method


# virtual methods
.method protected final c(I)Lcg;
    .locals 11

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lbu;->c:I

    const/4 v2, 0x1

    sub-int v2, v1, v2

    iget v3, p0, Lbu;->d:I

    if-eqz v0, :cond_2

    iget v4, p0, Lbu;->d:I

    if-ge v1, v4, :cond_b

    iget-object v4, p0, Lbu;->a:[C

    add-int/lit8 v5, v1, 0x1

    aget-char v1, v4, v1

    const/16 v4, 0x39

    if-gt v1, v4, :cond_0

    const/16 v4, 0x30

    if-ge v1, v4, :cond_1

    :cond_0
    const-string v4, "expected digit (0-9) to follow minus sign, for valid numeric value"

    invoke-virtual {p0, v1, v4}, Lbu;->a(ILjava/lang/String;)V

    :cond_1
    move v1, v5

    :cond_2
    const/4 v4, 0x1

    move v10, v4

    move v4, v1

    move v1, v10

    :goto_1
    iget v5, p0, Lbu;->d:I

    if-ge v4, v5, :cond_b

    iget-object v5, p0, Lbu;->a:[C

    add-int/lit8 v6, v4, 0x1

    aget-char v4, v5, v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_4

    const/16 v5, 0x39

    if-gt v4, v5, :cond_4

    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_28

    iget-object v4, p0, Lbu;->a:[C

    const/4 v5, 0x2

    sub-int v5, v6, v5

    aget-char v4, v4, v5

    const/16 v5, 0x30

    if-ne v4, v5, :cond_28

    const-string v4, "Leading zeroes not allowed"

    invoke-virtual {p0, v4}, Lbu;->a(Ljava/lang/String;)V

    move v4, v6

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    const/16 v7, 0x2e

    if-ne v4, v7, :cond_27

    move v4, v5

    move v5, v6

    :goto_2
    if-ge v5, v3, :cond_b

    iget-object v6, p0, Lbu;->a:[C

    add-int/lit8 v7, v5, 0x1

    aget-char v5, v6, v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_5

    const/16 v6, 0x39

    if-gt v5, v6, :cond_5

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_2

    :cond_5
    if-nez v4, :cond_6

    const-string v6, "Decimal point not followed by a digit"

    invoke-virtual {p0, v5, v6}, Lbu;->a(ILjava/lang/String;)V

    :cond_6
    move v6, v5

    move v5, v7

    :goto_3
    const/4 v7, 0x0

    const/16 v8, 0x65

    if-eq v6, v8, :cond_7

    const/16 v8, 0x45

    if-ne v6, v8, :cond_26

    :cond_7
    if-ge v5, v3, :cond_b

    iget-object v6, p0, Lbu;->a:[C

    add-int/lit8 v8, v5, 0x1

    aget-char v5, v6, v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_8

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_25

    :cond_8
    if-ge v8, v3, :cond_b

    iget-object v5, p0, Lbu;->a:[C

    add-int/lit8 v6, v8, 0x1

    aget-char v5, v5, v8

    move v10, v7

    move v7, v5

    move v5, v10

    :goto_4
    const/16 v8, 0x39

    if-gt v7, v8, :cond_9

    const/16 v8, 0x30

    if-lt v7, v8, :cond_9

    add-int/lit8 v5, v5, 0x1

    if-ge v6, v3, :cond_b

    iget-object v7, p0, Lbu;->a:[C

    add-int/lit8 v8, v6, 0x1

    aget-char v6, v7, v6

    move v7, v6

    move v6, v8

    goto :goto_4

    :cond_9
    if-nez v5, :cond_a

    const-string v3, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v7, v3}, Lbu;->a(ILjava/lang/String;)V

    :cond_a
    move v3, v5

    move v5, v6

    :goto_5
    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lbu;->c:I

    sub-int/2addr v5, v2

    iget-object v6, p0, Lbu;->m:Lcb;

    iget-object v7, p0, Lbu;->a:[C

    invoke-virtual {v6, v7, v2, v5}, Lcb;->a([CII)V

    invoke-virtual {p0, v0, v1, v4, v3}, Lbu;->a(ZIII)Lcg;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_b
    if-eqz v0, :cond_16

    add-int/lit8 v1, v2, 0x1

    :goto_7
    iput v1, p0, Lbu;->c:I

    iget-object v1, p0, Lbu;->m:Lcb;

    invoke-virtual {v1}, Lcb;->i()[C

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    const/4 v3, 0x0

    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0x2d

    aput-char v4, v1, v3

    :cond_c
    const/4 v3, 0x0

    const/4 v4, 0x0

    move v10, v3

    move-object v3, v1

    move v1, v10

    :goto_8
    iget v5, p0, Lbu;->c:I

    iget v6, p0, Lbu;->d:I

    if-lt v5, v6, :cond_17

    invoke-virtual {p0}, Lbu;->a()Z

    move-result v5

    if-nez v5, :cond_17

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v10, v5

    move v5, v4

    move v4, v10

    :cond_d
    if-nez v1, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing integer part (next char "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lbu;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lbu;->a(Ljava/lang/String;)V

    :cond_e
    const/4 v6, 0x0

    const/16 v7, 0x2e

    if-ne v5, v7, :cond_24

    add-int/lit8 v7, v2, 0x1

    aput-char v5, v3, v2

    move v2, v6

    move-object v6, v3

    move v3, v5

    move v5, v7

    :goto_9
    iget v7, p0, Lbu;->c:I

    iget v8, p0, Lbu;->d:I

    if-lt v7, v8, :cond_1a

    invoke-virtual {p0}, Lbu;->a()Z

    move-result v7

    if-nez v7, :cond_1a

    const/4 v4, 0x1

    move v10, v4

    move v4, v3

    move v3, v10

    :goto_a
    if-nez v2, :cond_f

    const-string v7, "Decimal point not followed by a digit"

    invoke-virtual {p0, v4, v7}, Lbu;->a(ILjava/lang/String;)V

    :cond_f
    :goto_b
    const/4 v7, 0x0

    const/16 v8, 0x65

    if-eq v4, v8, :cond_10

    const/16 v8, 0x45

    if-ne v4, v8, :cond_22

    :cond_10
    array-length v8, v6

    if-lt v5, v8, :cond_11

    iget-object v5, p0, Lbu;->m:Lcb;

    invoke-virtual {v5}, Lcb;->k()[C

    move-result-object v5

    const/4 v6, 0x0

    move v10, v6

    move-object v6, v5

    move v5, v10

    :cond_11
    add-int/lit8 v8, v5, 0x1

    aput-char v4, v6, v5

    iget v4, p0, Lbu;->c:I

    iget v5, p0, Lbu;->d:I

    if-ge v4, v5, :cond_1c

    iget-object v4, p0, Lbu;->a:[C

    iget v5, p0, Lbu;->c:I

    add-int/lit8 v9, v5, 0x1

    iput v9, p0, Lbu;->c:I

    aget-char v4, v4, v5

    :goto_c
    const/16 v5, 0x2d

    if-eq v4, v5, :cond_12

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_21

    :cond_12
    array-length v5, v6

    if-lt v8, v5, :cond_20

    iget-object v5, p0, Lbu;->m:Lcb;

    invoke-virtual {v5}, Lcb;->k()[C

    move-result-object v5

    const/4 v6, 0x0

    move v10, v6

    move-object v6, v5

    move v5, v10

    :goto_d
    add-int/lit8 v8, v5, 0x1

    aput-char v4, v6, v5

    iget v4, p0, Lbu;->c:I

    iget v5, p0, Lbu;->d:I

    if-ge v4, v5, :cond_1d

    iget-object v4, p0, Lbu;->a:[C

    iget v5, p0, Lbu;->c:I

    add-int/lit8 v9, v5, 0x1

    iput v9, p0, Lbu;->c:I

    aget-char v4, v4, v5

    move v5, v7

    move-object v7, v6

    move v6, v8

    :goto_e
    move v10, v5

    move v5, v4

    move v4, v10

    :goto_f
    const/16 v8, 0x39

    if-gt v5, v8, :cond_1f

    const/16 v8, 0x30

    if-lt v5, v8, :cond_1f

    add-int/lit8 v4, v4, 0x1

    array-length v8, v7

    if-lt v6, v8, :cond_13

    iget-object v6, p0, Lbu;->m:Lcb;

    invoke-virtual {v6}, Lcb;->k()[C

    move-result-object v6

    const/4 v7, 0x0

    move v10, v7

    move-object v7, v6

    move v6, v10

    :cond_13
    add-int/lit8 v8, v6, 0x1

    aput-char v5, v7, v6

    iget v6, p0, Lbu;->c:I

    iget v9, p0, Lbu;->d:I

    if-lt v6, v9, :cond_1e

    invoke-virtual {p0}, Lbu;->a()Z

    move-result v6

    if-nez v6, :cond_1e

    const/4 v3, 0x1

    move v6, v8

    move v10, v3

    move v3, v4

    move v4, v10

    :goto_10
    if-nez v3, :cond_14

    const-string v7, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v5, v7}, Lbu;->a(ILjava/lang/String;)V

    :cond_14
    move v5, v6

    :goto_11
    if-nez v4, :cond_15

    iget v4, p0, Lbu;->c:I

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    iput v4, p0, Lbu;->c:I

    :cond_15
    iget-object v4, p0, Lbu;->m:Lcb;

    invoke-virtual {v4, v5}, Lcb;->a(I)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lbu;->a(ZIII)Lcg;

    move-result-object v0

    goto/16 :goto_6

    :cond_16
    move v1, v2

    goto/16 :goto_7

    :cond_17
    iget-object v5, p0, Lbu;->a:[C

    iget v6, p0, Lbu;->c:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lbu;->c:I

    aget-char v5, v5, v6

    const/16 v6, 0x30

    if-lt v5, v6, :cond_d

    const/16 v6, 0x39

    if-gt v5, v6, :cond_d

    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x2

    if-ne v1, v6, :cond_18

    const/4 v6, 0x1

    sub-int v6, v2, v6

    aget-char v6, v3, v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_18

    const-string v6, "Leading zeroes not allowed"

    invoke-virtual {p0, v6}, Lbu;->a(Ljava/lang/String;)V

    :cond_18
    array-length v6, v3

    if-lt v2, v6, :cond_19

    iget-object v2, p0, Lbu;->m:Lcb;

    invoke-virtual {v2}, Lcb;->k()[C

    move-result-object v2

    const/4 v3, 0x0

    move v10, v3

    move-object v3, v2

    move v2, v10

    :cond_19
    add-int/lit8 v6, v2, 0x1

    aput-char v5, v3, v2

    move v2, v6

    goto/16 :goto_8

    :cond_1a
    iget-object v3, p0, Lbu;->a:[C

    iget v7, p0, Lbu;->c:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lbu;->c:I

    aget-char v3, v3, v7

    const/16 v7, 0x30

    if-lt v3, v7, :cond_23

    const/16 v7, 0x39

    if-gt v3, v7, :cond_23

    add-int/lit8 v2, v2, 0x1

    array-length v7, v6

    if-lt v5, v7, :cond_1b

    iget-object v5, p0, Lbu;->m:Lcb;

    invoke-virtual {v5}, Lcb;->k()[C

    move-result-object v5

    const/4 v6, 0x0

    move v10, v6

    move-object v6, v5

    move v5, v10

    :cond_1b
    add-int/lit8 v7, v5, 0x1

    aput-char v3, v6, v5

    move v5, v7

    goto/16 :goto_9

    :cond_1c
    const-string v4, "expected a digit for number exponent"

    invoke-virtual {p0, v4}, Lbu;->e(Ljava/lang/String;)C

    move-result v4

    goto/16 :goto_c

    :cond_1d
    const-string v4, "expected a digit for number exponent"

    invoke-virtual {p0, v4}, Lbu;->e(Ljava/lang/String;)C

    move-result v4

    move v5, v7

    move-object v7, v6

    move v6, v8

    goto/16 :goto_e

    :cond_1e
    iget-object v5, p0, Lbu;->a:[C

    iget v6, p0, Lbu;->c:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lbu;->c:I

    aget-char v5, v5, v6

    move v6, v8

    move v10, v4

    move v4, v5

    move v5, v10

    goto/16 :goto_e

    :cond_1f
    move v10, v4

    move v4, v3

    move v3, v10

    goto/16 :goto_10

    :cond_20
    move v5, v8

    goto/16 :goto_d

    :cond_21
    move v5, v4

    move v4, v7

    move-object v7, v6

    move v6, v8

    goto/16 :goto_f

    :cond_22
    move v4, v3

    move v3, v7

    goto/16 :goto_11

    :cond_23
    move v10, v4

    move v4, v3

    move v3, v10

    goto/16 :goto_a

    :cond_24
    move v10, v6

    move-object v6, v3

    move v3, v4

    move v4, v5

    move v5, v2

    move v2, v10

    goto/16 :goto_b

    :cond_25
    move v6, v8

    move v10, v7

    move v7, v5

    move v5, v10

    goto/16 :goto_4

    :cond_26
    move v3, v7

    goto/16 :goto_5

    :cond_27
    move v10, v5

    move v5, v6

    move v6, v4

    move v4, v10

    goto/16 :goto_3

    :cond_28
    move v4, v6

    goto/16 :goto_1
.end method
