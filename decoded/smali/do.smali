.class public final Ldo;
.super Lb;


# static fields
.field private static final r:[I

.field private static final s:[I


# instance fields
.field private t:Laj;

.field private u:Ldg;

.field private v:[I

.field private w:Z

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Le;->b()[I

    move-result-object v0

    sput-object v0, Ldo;->r:[I

    invoke-static {}, Le;->a()[I

    move-result-object v0

    sput-object v0, Ldo;->s:[I

    return-void
.end method

.method public constructor <init>(Lr;ILjava/io/InputStream;Laj;Ldg;[BIIZ)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p6

    move v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lb;-><init>(Lr;ILjava/io/InputStream;[BIIZ)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Ldo;->v:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldo;->w:Z

    iput-object p4, p0, Ldo;->t:Laj;

    iput-object p5, p0, Ldo;->u:Ldg;

    sget-object v0, Laq;->h:Laq;

    invoke-virtual {v0, p2}, Laq;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ldo;->l()V

    :cond_0
    return-void
.end method

.method private final a([CIIZI)Lcg;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x2e

    if-ne p3, v2, :cond_11

    add-int/lit8 v2, p2, 0x1

    int-to-char v3, p3

    aput-char v3, p1, p2

    move v3, v2

    move-object v4, p1

    move v2, p3

    :goto_0
    iget v5, p0, Ldo;->c:I

    iget v6, p0, Ldo;->d:I

    if-lt v5, v6, :cond_a

    invoke-virtual {p0}, Ldo;->a()Z

    move-result v5

    if-nez v5, :cond_a

    const/4 v1, 0x1

    :cond_0
    if-nez v0, :cond_1

    const-string v5, "Decimal point not followed by a digit"

    invoke-virtual {p0, v2, v5}, Ldo;->a(ILjava/lang/String;)V

    :cond_1
    move v8, v1

    move v1, v0

    move v0, v8

    :goto_1
    const/4 v5, 0x0

    const/16 v6, 0x65

    if-eq v2, v6, :cond_2

    const/16 v6, 0x45

    if-ne v2, v6, :cond_10

    :cond_2
    array-length v6, v4

    if-lt v3, v6, :cond_3

    iget-object v3, p0, Ldo;->m:Lcb;

    invoke-virtual {v3}, Lcb;->k()[C

    move-result-object v3

    const/4 v4, 0x0

    move v8, v4

    move-object v4, v3

    move v3, v8

    :cond_3
    add-int/lit8 v6, v3, 0x1

    int-to-char v2, v2

    aput-char v2, v4, v3

    iget v2, p0, Ldo;->c:I

    iget v3, p0, Ldo;->d:I

    if-lt v2, v3, :cond_4

    invoke-virtual {p0}, Ldo;->o()V

    :cond_4
    iget-object v2, p0, Ldo;->a:[B

    iget v3, p0, Ldo;->c:I

    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Ldo;->c:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_5

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_f

    :cond_5
    array-length v3, v4

    if-lt v6, v3, :cond_e

    iget-object v3, p0, Ldo;->m:Lcb;

    invoke-virtual {v3}, Lcb;->k()[C

    move-result-object v3

    const/4 v4, 0x0

    move v8, v4

    move-object v4, v3

    move v3, v8

    :goto_2
    add-int/lit8 v6, v3, 0x1

    int-to-char v2, v2

    aput-char v2, v4, v3

    iget v2, p0, Ldo;->c:I

    iget v3, p0, Ldo;->d:I

    if-lt v2, v3, :cond_6

    invoke-virtual {p0}, Ldo;->o()V

    :cond_6
    iget-object v2, p0, Ldo;->a:[B

    iget v3, p0, Ldo;->c:I

    add-int/lit8 v7, v3, 0x1

    iput v7, p0, Ldo;->c:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    move v3, v2

    move v2, v5

    move-object v5, v4

    move v4, v6

    :goto_3
    const/16 v6, 0x39

    if-gt v3, v6, :cond_d

    const/16 v6, 0x30

    if-lt v3, v6, :cond_d

    add-int/lit8 v2, v2, 0x1

    array-length v6, v5

    if-lt v4, v6, :cond_7

    iget-object v4, p0, Ldo;->m:Lcb;

    invoke-virtual {v4}, Lcb;->k()[C

    move-result-object v4

    const/4 v5, 0x0

    move v8, v5

    move-object v5, v4

    move v4, v8

    :cond_7
    add-int/lit8 v6, v4, 0x1

    int-to-char v7, v3

    aput-char v7, v5, v4

    iget v4, p0, Ldo;->c:I

    iget v7, p0, Ldo;->d:I

    if-lt v4, v7, :cond_c

    invoke-virtual {p0}, Ldo;->a()Z

    move-result v4

    if-nez v4, :cond_c

    const/4 v0, 0x1

    move v4, v6

    move v8, v0

    move v0, v2

    move v2, v8

    :goto_4
    if-nez v0, :cond_8

    const-string v5, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v3, v5}, Ldo;->a(ILjava/lang/String;)V

    :cond_8
    move v3, v4

    :goto_5
    if-nez v2, :cond_9

    iget v2, p0, Ldo;->c:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    iput v2, p0, Ldo;->c:I

    :cond_9
    iget-object v2, p0, Ldo;->m:Lcb;

    invoke-virtual {v2, v3}, Lcb;->a(I)V

    invoke-virtual {p0, p4, p5, v1, v0}, Ldo;->b(ZIII)Lcg;

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v2, p0, Ldo;->a:[B

    iget v5, p0, Ldo;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ldo;->c:I

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    const/16 v5, 0x30

    if-lt v2, v5, :cond_0

    const/16 v5, 0x39

    if-gt v2, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    array-length v5, v4

    if-lt v3, v5, :cond_b

    iget-object v3, p0, Ldo;->m:Lcb;

    invoke-virtual {v3}, Lcb;->k()[C

    move-result-object v3

    const/4 v4, 0x0

    move v8, v4

    move-object v4, v3

    move v3, v8

    :cond_b
    add-int/lit8 v5, v3, 0x1

    int-to-char v6, v2

    aput-char v6, v4, v3

    move v3, v5

    goto/16 :goto_0

    :cond_c
    iget-object v3, p0, Ldo;->a:[B

    iget v4, p0, Ldo;->c:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Ldo;->c:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    move v4, v6

    goto :goto_3

    :cond_d
    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_4

    :cond_e
    move v3, v6

    goto/16 :goto_2

    :cond_f
    move v3, v2

    move v2, v5

    move-object v5, v4

    move v4, v6

    goto/16 :goto_3

    :cond_10
    move v2, v0

    move v0, v5

    goto :goto_5

    :cond_11
    move v2, p3

    move v3, p2

    move-object v4, p1

    move v8, v0

    move v0, v1

    move v1, v8

    goto/16 :goto_1
.end method

.method private final a([CIZI)Lcg;
    .locals 7

    move v5, p4

    move v2, p2

    move-object v1, p1

    :goto_0
    iget v0, p0, Ldo;->c:I

    iget v3, p0, Ldo;->d:I

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Ldo;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldo;->m:Lcb;

    invoke-virtual {v0, v2}, Lcb;->a(I)V

    invoke-virtual {p0, p3, v5}, Ldo;->a(ZI)Lcg;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Ldo;->a:[B

    iget v3, p0, Ldo;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ldo;->c:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    const/16 v0, 0x39

    if-gt v3, v0, :cond_1

    const/16 v0, 0x30

    if-ge v3, v0, :cond_3

    :cond_1
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_2

    const/16 v0, 0x65

    if-eq v3, v0, :cond_2

    const/16 v0, 0x45

    if-ne v3, v0, :cond_4

    :cond_2
    move-object v0, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Ldo;->a([CIIZI)Lcg;

    move-result-object v0

    goto :goto_1

    :cond_3
    array-length v0, v1

    if-lt v2, v0, :cond_5

    iget-object v0, p0, Ldo;->m:Lcb;

    invoke-virtual {v0}, Lcb;->k()[C

    move-result-object v0

    const/4 v1, 0x0

    move v6, v1

    move-object v1, v0

    move v0, v6

    :goto_2
    add-int/lit8 v2, v0, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v0

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_4
    iget v0, p0, Ldo;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ldo;->c:I

    iget-object v0, p0, Ldo;->m:Lcb;

    invoke-virtual {v0, v2}, Lcb;->a(I)V

    invoke-virtual {p0, p3, v5}, Ldo;->a(ZI)Lcg;

    move-result-object v0

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method private final a(II)Lcj;
    .locals 2

    iget-object v0, p0, Ldo;->u:Ldg;

    invoke-virtual {v0, p1}, Ldg;->a(I)Lcj;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldo;->v:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Ldo;->v:[I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Ldo;->a([III)Lcj;

    move-result-object v0

    goto :goto_0
.end method

.method private final a(III)Lcj;
    .locals 6

    iget-object v1, p0, Ldo;->v:[I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ldo;->a([IIIII)Lcj;

    move-result-object v0

    return-object v0
.end method

.method private final a(IIII)Lcj;
    .locals 6

    iget-object v0, p0, Ldo;->v:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v1, p0, Ldo;->v:[I

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ldo;->a([IIIII)Lcj;

    move-result-object v0

    return-object v0
.end method

.method private final a([III)Lcj;
    .locals 11

    shl-int/lit8 v0, p2, 0x2

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    const/4 v1, 0x4

    if-ge p3, v1, :cond_6

    const/4 v1, 0x1

    sub-int v1, p2, v1

    aget v1, p1, v1

    const/4 v2, 0x1

    sub-int v2, p2, v2

    const/4 v3, 0x4

    sub-int/2addr v3, p3

    shl-int/lit8 v3, v3, 0x3

    shl-int v3, v1, v3

    aput v3, p1, v2

    :goto_0
    iget-object v2, p0, Ldo;->m:Lcb;

    invoke-virtual {v2}, Lcb;->i()[C

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v10, v4

    move-object v4, v2

    move v2, v10

    :goto_1
    if-ge v2, v0, :cond_a

    shr-int/lit8 v5, v2, 0x2

    aget v5, p1, v5

    and-int/lit8 v6, v2, 0x3

    const/4 v7, 0x3

    sub-int v6, v7, v6

    shl-int/lit8 v6, v6, 0x3

    shr-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v2, v2, 0x1

    const/16 v6, 0x7f

    if-le v5, v6, :cond_e

    and-int/lit16 v6, v5, 0xe0

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_7

    and-int/lit8 v5, v5, 0x1f

    const/4 v6, 0x1

    move v10, v6

    move v6, v5

    move v5, v10

    :goto_2
    add-int v7, v2, v5

    if-le v7, v0, :cond_0

    const-string v7, " in field name"

    invoke-virtual {p0, v7}, Ldo;->b(Ljava/lang/String;)V

    :cond_0
    shr-int/lit8 v7, v2, 0x2

    aget v7, p1, v7

    and-int/lit8 v8, v2, 0x3

    const/4 v9, 0x3

    sub-int v8, v9, v8

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_1

    invoke-direct {p0, v7}, Ldo;->n(I)V

    :cond_1
    shl-int/lit8 v6, v6, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    const/4 v7, 0x1

    if-le v5, v7, :cond_d

    shr-int/lit8 v7, v2, 0x2

    aget v7, p1, v7

    and-int/lit8 v8, v2, 0x3

    const/4 v9, 0x3

    sub-int v8, v9, v8

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_2

    invoke-direct {p0, v7}, Ldo;->n(I)V

    :cond_2
    shl-int/lit8 v6, v6, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    const/4 v7, 0x2

    if-le v5, v7, :cond_d

    shr-int/lit8 v7, v2, 0x2

    aget v7, p1, v7

    and-int/lit8 v8, v2, 0x3

    const/4 v9, 0x3

    sub-int v8, v9, v8

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    add-int/lit8 v2, v2, 0x1

    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_3

    and-int/lit16 v8, v7, 0xff

    invoke-direct {p0, v8}, Ldo;->n(I)V

    :cond_3
    shl-int/lit8 v6, v6, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v6, v7

    move v10, v6

    move v6, v2

    move v2, v10

    :goto_3
    const/4 v7, 0x2

    if-le v5, v7, :cond_c

    const/high16 v5, 0x10000

    sub-int/2addr v2, v5

    array-length v5, v4

    if-lt v3, v5, :cond_4

    iget-object v4, p0, Ldo;->m:Lcb;

    invoke-virtual {v4}, Lcb;->l()[C

    move-result-object v4

    :cond_4
    add-int/lit8 v5, v3, 0x1

    const v7, 0xd800

    shr-int/lit8 v8, v2, 0xa

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v4, v3

    const v3, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v3

    move v3, v6

    move v10, v5

    move-object v5, v4

    move v4, v10

    :goto_4
    array-length v6, v5

    if-lt v4, v6, :cond_5

    iget-object v5, p0, Ldo;->m:Lcb;

    invoke-virtual {v5}, Lcb;->l()[C

    move-result-object v5

    :cond_5
    add-int/lit8 v6, v4, 0x1

    int-to-char v2, v2

    aput-char v2, v5, v4

    move v2, v3

    move-object v4, v5

    move v3, v6

    goto/16 :goto_1

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_7
    and-int/lit16 v6, v5, 0xf0

    const/16 v7, 0xe0

    if-ne v6, v7, :cond_8

    and-int/lit8 v5, v5, 0xf

    const/4 v6, 0x2

    move v10, v6

    move v6, v5

    move v5, v10

    goto/16 :goto_2

    :cond_8
    and-int/lit16 v6, v5, 0xf8

    const/16 v7, 0xf0

    if-ne v6, v7, :cond_9

    and-int/lit8 v5, v5, 0x7

    const/4 v6, 0x3

    move v10, v6

    move v6, v5

    move v5, v10

    goto/16 :goto_2

    :cond_9
    invoke-direct {p0, v5}, Ldo;->m(I)V

    const/4 v5, 0x1

    move v6, v5

    goto/16 :goto_2

    :cond_a
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v4, v2, v3}, Ljava/lang/String;-><init>([CII)V

    const/4 v2, 0x4

    if-ge p3, v2, :cond_b

    const/4 v2, 0x1

    sub-int v2, p2, v2

    aput v1, p1, v2

    :cond_b
    iget-object v1, p0, Ldo;->u:Ldg;

    invoke-virtual {v1, v0, p1, p2}, Ldg;->a(Ljava/lang/String;[II)Lcj;

    move-result-object v0

    return-object v0

    :cond_c
    move-object v5, v4

    move v4, v3

    move v3, v6

    goto :goto_4

    :cond_d
    move v10, v6

    move v6, v2

    move v2, v10

    goto :goto_3

    :cond_e
    move v10, v5

    move-object v5, v4

    move v4, v3

    move v3, v2

    move v2, v10

    goto :goto_4
.end method

.method private final a([IIII)Lcj;
    .locals 3

    array-length v0, p1

    if-lt p2, v0, :cond_1

    array-length v0, p1

    invoke-static {p1, v0}, Ldo;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Ldo;->v:[I

    :goto_0
    add-int/lit8 v1, p2, 0x1

    aput p3, v0, p2

    iget-object v2, p0, Ldo;->u:Ldg;

    invoke-virtual {v2, v0, v1}, Ldg;->a([II)Lcj;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0, v1, p4}, Ldo;->a([III)Lcj;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private a([IIIII)Lcj;
    .locals 9

    sget-object v0, Ldo;->s:[I

    move v1, p5

    move v2, p4

    move v3, p3

    move v4, p2

    move-object v5, p1

    :goto_0
    aget v6, v0, v2

    if-eqz v6, :cond_1

    const/16 v6, 0x22

    if-eq v2, v6, :cond_7

    const/16 v6, 0x5c

    if-eq v2, v6, :cond_3

    const-string v6, "name"

    invoke-virtual {p0, v2, v6}, Ldo;->c(ILjava/lang/String;)V

    :goto_1
    const/16 v6, 0x7f

    if-le v2, v6, :cond_1

    const/4 v6, 0x4

    if-lt v1, v6, :cond_0

    array-length v1, v5

    if-lt v4, v1, :cond_d

    array-length v1, v5

    invoke-static {v5, v1}, Ldo;->a([II)[I

    move-result-object v1

    iput-object v1, p0, Ldo;->v:[I

    :goto_2
    add-int/lit8 v5, v4, 0x1

    aput v3, v1, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v8, v4

    move v4, v5

    move-object v5, v1

    move v1, v8

    :cond_0
    const/16 v6, 0x800

    if-ge v2, v6, :cond_4

    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v2, 0x6

    or-int/lit16 v6, v6, 0xc0

    or-int/2addr v3, v6

    add-int/lit8 v1, v1, 0x1

    :goto_3
    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    :cond_1
    const/4 v6, 0x4

    if-ge v1, v6, :cond_6

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    move v3, v4

    move-object v4, v5

    :goto_4
    iget v5, p0, Ldo;->c:I

    iget v6, p0, Ldo;->d:I

    if-lt v5, v6, :cond_2

    invoke-virtual {p0}, Ldo;->a()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, " in field name"

    invoke-virtual {p0, v5}, Ldo;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v5, p0, Ldo;->a:[B

    iget v6, p0, Ldo;->c:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ldo;->c:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    move v8, v5

    move-object v5, v4

    move v4, v3

    move v3, v2

    move v2, v8

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Ldo;->s()C

    move-result v2

    goto :goto_1

    :cond_4
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v2, 0xc

    or-int/lit16 v6, v6, 0xe0

    or-int/2addr v3, v6

    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x4

    if-lt v1, v6, :cond_5

    array-length v1, v5

    if-lt v4, v1, :cond_c

    array-length v1, v5

    invoke-static {v5, v1}, Ldo;->a([II)[I

    move-result-object v1

    iput-object v1, p0, Ldo;->v:[I

    :goto_5
    add-int/lit8 v5, v4, 0x1

    aput v3, v1, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v8, v4

    move v4, v5

    move-object v5, v1

    move v1, v8

    :cond_5
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v6, v2, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v3, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    array-length v1, v5

    if-lt v4, v1, :cond_b

    array-length v1, v5

    invoke-static {v5, v1}, Ldo;->a([II)[I

    move-result-object v1

    iput-object v1, p0, Ldo;->v:[I

    :goto_6
    add-int/lit8 v5, v4, 0x1

    aput v3, v1, v4

    const/4 v3, 0x1

    move-object v4, v1

    move v1, v3

    move v3, v5

    goto :goto_4

    :cond_7
    if-lez v1, :cond_a

    array-length v0, v5

    if-lt v4, v0, :cond_9

    array-length v0, v5

    invoke-static {v5, v0}, Ldo;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Ldo;->v:[I

    :goto_7
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v8, v2

    move-object v2, v0

    move v0, v8

    :goto_8
    iget-object v3, p0, Ldo;->u:Ldg;

    invoke-virtual {v3, v2, v0}, Ldg;->a([II)Lcj;

    move-result-object v3

    if-nez v3, :cond_8

    invoke-direct {p0, v2, v0, v1}, Ldo;->a([III)Lcj;

    move-result-object v0

    :goto_9
    return-object v0

    :cond_8
    move-object v0, v3

    goto :goto_9

    :cond_9
    move-object v0, v5

    goto :goto_7

    :cond_a
    move v0, v4

    move-object v2, v5

    goto :goto_8

    :cond_b
    move-object v1, v5

    goto :goto_6

    :cond_c
    move-object v1, v5

    goto :goto_5

    :cond_d
    move-object v1, v5

    goto/16 :goto_2
.end method

.method private a(Lcg;)V
    .locals 7

    invoke-virtual {p1}, Lcg;->b()[B

    move-result-object v0

    const/4 v1, 0x1

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_4

    iget v3, p0, Ldo;->c:I

    iget v4, p0, Ldo;->d:I

    if-lt v3, v4, :cond_0

    invoke-virtual {p0}, Ldo;->o()V

    :cond_0
    aget-byte v3, v0, v1

    iget-object v4, p0, Ldo;->a:[B

    iget v5, p0, Ldo;->c:I

    aget-byte v4, v4, v5

    if-eq v3, v4, :cond_3

    invoke-virtual {p1}, Lcg;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    iget v3, p0, Ldo;->c:I

    iget v5, p0, Ldo;->d:I

    if-lt v3, v5, :cond_1

    invoke-virtual {p0}, Ldo;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Ldo;->a:[B

    iget v5, p0, Ldo;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ldo;->c:I

    aget-byte v3, v3, v5

    invoke-direct {p0, v3}, Ldo;->g(I)I

    move-result v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, p0, Ldo;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ldo;->c:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized token \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': was expecting \'null\', \'true\' or \'false\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ldo;->c(Ljava/lang/String;)V

    :cond_3
    iget v3, p0, Ldo;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ldo;->c:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static a([II)[I
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    new-array v0, p1, [I

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    add-int v1, v0, p1

    new-array v1, v1, [I

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_0
.end method

.method private final b(III)Lcj;
    .locals 2

    iget-object v0, p0, Ldo;->u:Ldg;

    invoke-virtual {v0, p1, p2}, Ldg;->a(II)Lcj;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldo;->v:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Ldo;->v:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Ldo;->v:[I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p3}, Ldo;->a([III)Lcj;

    move-result-object v0

    goto :goto_0
.end method

.method private b(II)V
    .locals 0

    iput p2, p0, Ldo;->c:I

    invoke-direct {p0, p1}, Ldo;->n(I)V

    return-void
.end method

.method private c(I)Lcg;
    .locals 11

    const/16 v10, 0x39

    const/16 v3, 0x2d

    const/16 v9, 0x30

    const/4 v8, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Ldo;->m:Lcb;

    invoke-virtual {v0}, Lcb;->i()[C

    move-result-object v1

    if-ne p1, v3, :cond_5

    move v4, v8

    :goto_0
    if-eqz v4, :cond_b

    add-int/lit8 v0, v2, 0x1

    aput-char v3, v1, v2

    iget v2, p0, Ldo;->c:I

    iget v3, p0, Ldo;->d:I

    if-lt v2, v3, :cond_0

    invoke-virtual {p0}, Ldo;->o()V

    :cond_0
    iget-object v2, p0, Ldo;->a:[B

    iget v3, p0, Ldo;->c:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Ldo;->c:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v9, :cond_1

    if-le v2, v10, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing integer part (next char "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ldo;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ldo;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-ne v2, v9, :cond_4

    iget v3, p0, Ldo;->c:I

    iget v5, p0, Ldo;->d:I

    if-lt v3, v5, :cond_3

    invoke-virtual {p0}, Ldo;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Ldo;->a:[B

    iget v5, p0, Ldo;->c:I

    aget-byte v3, v3, v5

    if-nez v3, :cond_4

    const-string v3, "Leading zeroes not allowed"

    invoke-virtual {p0, v3}, Ldo;->a(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v3, v0, 0x1

    int-to-char v2, v2

    aput-char v2, v1, v0

    iget v0, p0, Ldo;->c:I

    array-length v2, v1

    add-int/2addr v0, v2

    iget v2, p0, Ldo;->d:I

    if-le v0, v2, :cond_a

    iget v0, p0, Ldo;->d:I

    move v5, v8

    move v2, v3

    :goto_2
    iget v3, p0, Ldo;->c:I

    if-lt v3, v0, :cond_6

    invoke-direct {p0, v1, v2, v4, v5}, Ldo;->a([CIZI)Lcg;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_5
    move v4, v2

    goto :goto_0

    :cond_6
    iget-object v3, p0, Ldo;->a:[B

    iget v6, p0, Ldo;->c:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ldo;->c:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    if-lt v3, v9, :cond_7

    if-gt v3, v10, :cond_7

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v2, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v2

    move v2, v6

    goto :goto_2

    :cond_7
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_8

    const/16 v0, 0x65

    if-eq v3, v0, :cond_8

    const/16 v0, 0x45

    if-ne v3, v0, :cond_9

    :cond_8
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ldo;->a([CIIZI)Lcg;

    move-result-object v0

    goto :goto_3

    :cond_9
    iget v0, p0, Ldo;->c:I

    sub-int/2addr v0, v8

    iput v0, p0, Ldo;->c:I

    iget-object v0, p0, Ldo;->m:Lcb;

    invoke-virtual {v0, v2}, Lcb;->a(I)V

    invoke-virtual {p0, v4, v5}, Ldo;->a(ZI)Lcg;

    move-result-object v0

    goto :goto_3

    :cond_a
    move v5, v8

    move v2, v3

    goto :goto_2

    :cond_b
    move v0, v2

    move v2, p1

    goto :goto_1
.end method

.method private d(I)Lcj;
    .locals 12

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x4

    const/4 v5, 0x2

    const/16 v8, 0x22

    sget-object v0, Ldo;->s:[I

    move v2, v5

    move v4, p1

    :goto_0
    iget v1, p0, Ldo;->d:I

    iget v6, p0, Ldo;->c:I

    sub-int/2addr v1, v6

    if-ge v1, v11, :cond_0

    iget-object v1, p0, Ldo;->v:[I

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Ldo;->a([IIIII)Lcj;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-object v1, p0, Ldo;->a:[B

    iget v6, p0, Ldo;->c:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ldo;->c:I

    aget-byte v1, v1, v6

    and-int/lit16 v9, v1, 0xff

    aget v1, v0, v9

    if-eqz v1, :cond_2

    if-ne v9, v8, :cond_1

    iget-object v0, p0, Ldo;->v:[I

    invoke-direct {p0, v0, v2, v4, v10}, Ldo;->a([IIII)Lcj;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v6, p0, Ldo;->v:[I

    move-object v5, p0

    move v7, v2

    move v8, v4

    invoke-direct/range {v5 .. v10}, Ldo;->a([IIIII)Lcj;

    move-result-object v0

    goto :goto_1

    :cond_2
    shl-int/lit8 v1, v4, 0x8

    or-int v6, v1, v9

    iget-object v1, p0, Ldo;->a:[B

    iget v4, p0, Ldo;->c:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Ldo;->c:I

    aget-byte v1, v1, v4

    and-int/lit16 v4, v1, 0xff

    aget v1, v0, v4

    if-eqz v1, :cond_4

    if-ne v4, v8, :cond_3

    iget-object v0, p0, Ldo;->v:[I

    invoke-direct {p0, v0, v2, v6, v5}, Ldo;->a([IIII)Lcj;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Ldo;->v:[I

    move-object v0, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Ldo;->a([IIIII)Lcj;

    move-result-object v0

    goto :goto_1

    :cond_4
    shl-int/lit8 v1, v6, 0x8

    or-int v6, v1, v4

    iget-object v1, p0, Ldo;->a:[B

    iget v4, p0, Ldo;->c:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Ldo;->c:I

    aget-byte v1, v1, v4

    and-int/lit16 v4, v1, 0xff

    aget v1, v0, v4

    if-eqz v1, :cond_6

    if-ne v4, v8, :cond_5

    iget-object v0, p0, Ldo;->v:[I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v2, v6, v1}, Ldo;->a([IIII)Lcj;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Ldo;->v:[I

    const/4 v5, 0x3

    move-object v0, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Ldo;->a([IIIII)Lcj;

    move-result-object v0

    goto :goto_1

    :cond_6
    shl-int/lit8 v1, v6, 0x8

    or-int v6, v1, v4

    iget-object v1, p0, Ldo;->a:[B

    iget v4, p0, Ldo;->c:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Ldo;->c:I

    aget-byte v1, v1, v4

    and-int/lit16 v4, v1, 0xff

    aget v1, v0, v4

    if-eqz v1, :cond_8

    if-ne v4, v8, :cond_7

    iget-object v0, p0, Ldo;->v:[I

    invoke-direct {p0, v0, v2, v6, v11}, Ldo;->a([IIII)Lcj;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Ldo;->v:[I

    move-object v0, p0

    move v3, v6

    move v5, v11

    invoke-direct/range {v0 .. v5}, Ldo;->a([IIIII)Lcj;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    iget-object v1, p0, Ldo;->v:[I

    array-length v1, v1

    if-lt v2, v1, :cond_9

    iget-object v1, p0, Ldo;->v:[I

    invoke-static {v1, v2}, Ldo;->a([II)[I

    move-result-object v1

    iput-object v1, p0, Ldo;->v:[I

    :cond_9
    iget-object v1, p0, Ldo;->v:[I

    add-int/lit8 v7, v2, 0x1

    aput v6, v1, v2

    move v2, v7

    goto/16 :goto_0
.end method

.method private e(I)Lcj;
    .locals 12

    const/4 v11, 0x1

    const/16 v10, 0x27

    const/4 v9, 0x4

    const/4 v8, 0x0

    if-ne p1, v10, :cond_a

    sget-object v0, Laq;->d:Laq;

    invoke-virtual {p0, v0}, Ldo;->a(Laq;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Ldo;->c:I

    iget v1, p0, Ldo;->d:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ldo;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ": was expecting closing \'\'\' for name"

    invoke-virtual {p0, v0}, Ldo;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ldo;->a:[B

    iget v1, p0, Ldo;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldo;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v10, :cond_1

    invoke-static {}, Ldg;->c()Lcj;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Ldo;->v:[I

    sget-object v2, Ldo;->s:[I

    move v3, v8

    move-object v4, v1

    move v5, v0

    move v1, v8

    move v0, v8

    :goto_1
    if-eq v5, v10, :cond_9

    const/16 v6, 0x22

    if-eq v5, v6, :cond_3

    aget v6, v2, v5

    if-eqz v6, :cond_3

    const/16 v6, 0x5c

    if-eq v5, v6, :cond_5

    const-string v6, "name"

    invoke-virtual {p0, v5, v6}, Ldo;->c(ILjava/lang/String;)V

    :goto_2
    const/16 v6, 0x7f

    if-le v5, v6, :cond_3

    if-lt v0, v9, :cond_2

    array-length v0, v4

    if-lt v3, v0, :cond_18

    array-length v0, v4

    invoke-static {v4, v0}, Ldo;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Ldo;->v:[I

    :goto_3
    add-int/lit8 v4, v3, 0x1

    aput v1, v0, v3

    move v1, v8

    move v3, v4

    move-object v4, v0

    move v0, v8

    :cond_2
    const/16 v6, 0x800

    if-ge v5, v6, :cond_6

    shl-int/lit8 v1, v1, 0x8

    shr-int/lit8 v6, v5, 0x6

    or-int/lit16 v6, v6, 0xc0

    or-int/2addr v1, v6

    add-int/lit8 v0, v0, 0x1

    :goto_4
    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    :cond_3
    if-ge v0, v9, :cond_8

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v5

    :goto_5
    iget v5, p0, Ldo;->c:I

    iget v6, p0, Ldo;->d:I

    if-lt v5, v6, :cond_4

    invoke-virtual {p0}, Ldo;->a()Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, " in field name"

    invoke-virtual {p0, v5}, Ldo;->b(Ljava/lang/String;)V

    :cond_4
    iget-object v5, p0, Ldo;->a:[B

    iget v6, p0, Ldo;->c:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ldo;->c:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Ldo;->s()C

    move-result v5

    goto :goto_2

    :cond_6
    shl-int/lit8 v1, v1, 0x8

    shr-int/lit8 v6, v5, 0xc

    or-int/lit16 v6, v6, 0xe0

    or-int/2addr v1, v6

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v9, :cond_7

    array-length v0, v4

    if-lt v3, v0, :cond_17

    array-length v0, v4

    invoke-static {v4, v0}, Ldo;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Ldo;->v:[I

    :goto_6
    add-int/lit8 v4, v3, 0x1

    aput v1, v0, v3

    move v1, v8

    move v3, v4

    move-object v4, v0

    move v0, v8

    :cond_7
    shl-int/lit8 v1, v1, 0x8

    shr-int/lit8 v6, v5, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    array-length v0, v4

    if-lt v3, v0, :cond_16

    array-length v0, v4

    invoke-static {v4, v0}, Ldo;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Ldo;->v:[I

    :goto_7
    add-int/lit8 v4, v3, 0x1

    aput v1, v0, v3

    move v1, v5

    move v3, v4

    move-object v4, v0

    move v0, v11

    goto :goto_5

    :cond_9
    if-lez v0, :cond_15

    array-length v2, v4

    if-lt v3, v2, :cond_14

    array-length v2, v4

    invoke-static {v4, v2}, Ldo;->a([II)[I

    move-result-object v2

    iput-object v2, p0, Ldo;->v:[I

    :goto_8
    add-int/lit8 v4, v3, 0x1

    aput v1, v2, v3

    move v1, v4

    :goto_9
    iget-object v3, p0, Ldo;->u:Ldg;

    invoke-virtual {v3, v2, v1}, Ldg;->a([II)Lcj;

    move-result-object v3

    if-nez v3, :cond_10

    invoke-direct {p0, v2, v1, v0}, Ldo;->a([III)Lcj;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    sget-object v0, Laq;->c:Laq;

    invoke-virtual {p0, v0}, Ldo;->a(Laq;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v0}, Ldo;->b(ILjava/lang/String;)V

    :cond_b
    invoke-static {}, Le;->d()[I

    move-result-object v0

    aget v1, v0, p1

    if-eqz v1, :cond_c

    const-string v1, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v1}, Ldo;->b(ILjava/lang/String;)V

    :cond_c
    iget-object v1, p0, Ldo;->v:[I

    move v2, v8

    move v3, v8

    move-object v4, v1

    move v5, p1

    move v1, v8

    :goto_a
    if-ge v1, v9, :cond_e

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v5

    :goto_b
    iget v5, p0, Ldo;->c:I

    iget v6, p0, Ldo;->d:I

    if-lt v5, v6, :cond_d

    invoke-virtual {p0}, Ldo;->a()Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, " in field name"

    invoke-virtual {p0, v5}, Ldo;->b(Ljava/lang/String;)V

    :cond_d
    iget-object v5, p0, Ldo;->a:[B

    iget v6, p0, Ldo;->c:I

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    aget v6, v0, v5

    if-nez v6, :cond_f

    iget v6, p0, Ldo;->c:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ldo;->c:I

    goto :goto_a

    :cond_e
    array-length v1, v4

    if-lt v3, v1, :cond_13

    array-length v1, v4

    invoke-static {v4, v1}, Ldo;->a([II)[I

    move-result-object v1

    iput-object v1, p0, Ldo;->v:[I

    :goto_c
    add-int/lit8 v4, v3, 0x1

    aput v2, v1, v3

    move v2, v5

    move v3, v4

    move-object v4, v1

    move v1, v11

    goto :goto_b

    :cond_f
    if-lez v1, :cond_12

    array-length v0, v4

    if-lt v3, v0, :cond_11

    array-length v0, v4

    invoke-static {v4, v0}, Ldo;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Ldo;->v:[I

    :goto_d
    add-int/lit8 v4, v3, 0x1

    aput v2, v0, v3

    move-object v2, v0

    move v0, v4

    :goto_e
    iget-object v3, p0, Ldo;->u:Ldg;

    invoke-virtual {v3, v2, v0}, Ldg;->a([II)Lcj;

    move-result-object v3

    if-nez v3, :cond_10

    invoke-direct {p0, v2, v0, v1}, Ldo;->a([III)Lcj;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    move-object v0, v3

    goto/16 :goto_0

    :cond_11
    move-object v0, v4

    goto :goto_d

    :cond_12
    move v0, v3

    move-object v2, v4

    goto :goto_e

    :cond_13
    move-object v1, v4

    goto :goto_c

    :cond_14
    move-object v2, v4

    goto/16 :goto_8

    :cond_15
    move v1, v3

    move-object v2, v4

    goto/16 :goto_9

    :cond_16
    move-object v0, v4

    goto/16 :goto_7

    :cond_17
    move-object v0, v4

    goto/16 :goto_6

    :cond_18
    move-object v0, v4

    goto/16 :goto_3
.end method

.method private f(I)Lcg;
    .locals 11

    const/16 v9, 0x27

    const/4 v8, 0x0

    if-ne p1, v9, :cond_0

    sget-object v0, Laq;->d:Laq;

    invoke-virtual {p0, v0}, Ldo;->a(Laq;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Ldo;->b(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Ldo;->m:Lcb;

    invoke-virtual {v0}, Lcb;->i()[C

    move-result-object v0

    sget-object v1, Ldo;->r:[I

    iget-object v2, p0, Ldo;->a:[B

    move v3, v8

    :goto_0
    iget v4, p0, Ldo;->c:I

    iget v5, p0, Ldo;->d:I

    if-lt v4, v5, :cond_2

    invoke-virtual {p0}, Ldo;->o()V

    :cond_2
    array-length v4, v0

    if-lt v3, v4, :cond_3

    iget-object v0, p0, Ldo;->m:Lcb;

    invoke-virtual {v0}, Lcb;->k()[C

    move-result-object v0

    move v3, v8

    :cond_3
    iget v4, p0, Ldo;->d:I

    iget v5, p0, Ldo;->c:I

    array-length v6, v0

    sub-int/2addr v6, v3

    add-int/2addr v5, v6

    if-ge v5, v4, :cond_c

    move v4, v3

    move v3, v5

    :goto_1
    iget v5, p0, Ldo;->c:I

    if-ge v5, v3, :cond_4

    iget v5, p0, Ldo;->c:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ldo;->c:I

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    if-eq v5, v9, :cond_5

    aget v6, v1, v5

    if-nez v6, :cond_5

    add-int/lit8 v6, v4, 0x1

    int-to-char v5, v5

    aput-char v5, v0, v4

    move v4, v6

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_0

    :cond_5
    if-eq v5, v9, :cond_a

    aget v3, v1, v5

    packed-switch v3, :pswitch_data_0

    const/16 v3, 0x20

    if-ge v5, v3, :cond_6

    const-string v3, "string value"

    invoke-virtual {p0, v5, v3}, Ldo;->c(ILjava/lang/String;)V

    :cond_6
    invoke-direct {p0, v5}, Ldo;->l(I)V

    :cond_7
    move v3, v4

    move v4, v5

    :goto_2
    array-length v5, v0

    if-lt v3, v5, :cond_8

    iget-object v0, p0, Ldo;->m:Lcb;

    invoke-virtual {v0}, Lcb;->k()[C

    move-result-object v0

    move v3, v8

    :cond_8
    add-int/lit8 v5, v3, 0x1

    int-to-char v4, v4

    aput-char v4, v0, v3

    move v3, v5

    goto :goto_0

    :pswitch_0
    const/16 v3, 0x22

    if-eq v5, v3, :cond_7

    invoke-direct {p0}, Ldo;->s()C

    move-result v3

    move v10, v4

    move v4, v3

    move v3, v10

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, v5}, Ldo;->h(I)I

    move-result v3

    move v10, v4

    move v4, v3

    move v3, v10

    goto :goto_2

    :pswitch_2
    iget v3, p0, Ldo;->d:I

    iget v6, p0, Ldo;->c:I

    sub-int/2addr v3, v6

    const/4 v6, 0x2

    if-lt v3, v6, :cond_9

    invoke-direct {p0, v5}, Ldo;->j(I)I

    move-result v3

    move v10, v4

    move v4, v3

    move v3, v10

    goto :goto_2

    :cond_9
    invoke-direct {p0, v5}, Ldo;->i(I)I

    move-result v3

    move v10, v4

    move v4, v3

    move v3, v10

    goto :goto_2

    :pswitch_3
    invoke-direct {p0, v5}, Ldo;->k(I)I

    move-result v3

    add-int/lit8 v5, v4, 0x1

    const v6, 0xd800

    shr-int/lit8 v7, v3, 0xa

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v0, v4

    array-length v4, v0

    if-lt v5, v4, :cond_b

    iget-object v0, p0, Ldo;->m:Lcb;

    invoke-virtual {v0}, Lcb;->k()[C

    move-result-object v0

    move v4, v8

    :goto_3
    const v5, 0xdc00

    and-int/lit16 v3, v3, 0x3ff

    or-int/2addr v3, v5

    move v10, v4

    move v4, v3

    move v3, v10

    goto :goto_2

    :cond_a
    iget-object v0, p0, Ldo;->m:Lcb;

    invoke-virtual {v0, v4}, Lcb;->a(I)V

    sget-object v0, Lcg;->g:Lcg;

    return-object v0

    :cond_b
    move v4, v5

    goto :goto_3

    :cond_c
    move v10, v4

    move v4, v3

    move v3, v10

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private g(I)I
    .locals 7

    const/4 v6, 0x2

    const/16 v5, 0x80

    const/4 v4, 0x1

    if-gez p1, :cond_7

    and-int/lit16 v0, p1, 0xe0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_4

    and-int/lit8 v0, p1, 0x1f

    move v1, v4

    :goto_0
    invoke-direct {p0}, Ldo;->v()I

    move-result v2

    and-int/lit16 v3, v2, 0xc0

    if-eq v3, v5, :cond_0

    and-int/lit16 v3, v2, 0xff

    invoke-direct {p0, v3}, Ldo;->n(I)V

    :cond_0
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v0, v2

    if-le v1, v4, :cond_3

    invoke-direct {p0}, Ldo;->v()I

    move-result v2

    and-int/lit16 v3, v2, 0xc0

    if-eq v3, v5, :cond_1

    and-int/lit16 v3, v2, 0xff

    invoke-direct {p0, v3}, Ldo;->n(I)V

    :cond_1
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v0, v2

    if-le v1, v6, :cond_3

    invoke-direct {p0}, Ldo;->v()I

    move-result v1

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v5, :cond_2

    and-int/lit16 v2, v1, 0xff

    invoke-direct {p0, v2}, Ldo;->n(I)V

    :cond_2
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    :cond_3
    :goto_1
    return v0

    :cond_4
    and-int/lit16 v0, p1, 0xf0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_5

    and-int/lit8 v0, p1, 0xf

    move v1, v6

    goto :goto_0

    :cond_5
    and-int/lit16 v0, p1, 0xf8

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_6

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x3

    goto :goto_0

    :cond_6
    and-int/lit16 v0, p1, 0xff

    invoke-direct {p0, v0}, Ldo;->m(I)V

    move v0, p1

    move v1, v4

    goto :goto_0

    :cond_7
    move v0, p1

    goto :goto_1
.end method

.method private final h(I)I
    .locals 3

    iget v0, p0, Ldo;->c:I

    iget v1, p0, Ldo;->d:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ldo;->o()V

    :cond_0
    iget-object v0, p0, Ldo;->a:[B

    iget v1, p0, Ldo;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldo;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_1

    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Ldo;->c:I

    invoke-direct {p0, v1, v2}, Ldo;->b(II)V

    :cond_1
    and-int/lit8 v1, p1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private final i(I)I
    .locals 5

    const/16 v4, 0x80

    iget v0, p0, Ldo;->c:I

    iget v1, p0, Ldo;->d:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ldo;->o()V

    :cond_0
    and-int/lit8 v0, p1, 0xf

    iget-object v1, p0, Ldo;->a:[B

    iget v2, p0, Ldo;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ldo;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_1

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Ldo;->c:I

    invoke-direct {p0, v2, v3}, Ldo;->b(II)V

    :cond_1
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    iget v1, p0, Ldo;->c:I

    iget v2, p0, Ldo;->d:I

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Ldo;->o()V

    :cond_2
    iget-object v1, p0, Ldo;->a:[B

    iget v2, p0, Ldo;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ldo;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_3

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Ldo;->c:I

    invoke-direct {p0, v2, v3}, Ldo;->b(II)V

    :cond_3
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private final j(I)I
    .locals 5

    const/16 v4, 0x80

    and-int/lit8 v0, p1, 0xf

    iget-object v1, p0, Ldo;->a:[B

    iget v2, p0, Ldo;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ldo;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_0

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Ldo;->c:I

    invoke-direct {p0, v2, v3}, Ldo;->b(II)V

    :cond_0
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    iget-object v1, p0, Ldo;->a:[B

    iget v2, p0, Ldo;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ldo;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_1

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Ldo;->c:I

    invoke-direct {p0, v2, v3}, Ldo;->b(II)V

    :cond_1
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private final k(I)I
    .locals 5

    const/16 v4, 0x80

    iget v0, p0, Ldo;->c:I

    iget v1, p0, Ldo;->d:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ldo;->o()V

    :cond_0
    iget-object v0, p0, Ldo;->a:[B

    iget v1, p0, Ldo;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldo;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_1

    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Ldo;->c:I

    invoke-direct {p0, v1, v2}, Ldo;->b(II)V

    :cond_1
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    iget v1, p0, Ldo;->c:I

    iget v2, p0, Ldo;->d:I

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Ldo;->o()V

    :cond_2
    iget-object v1, p0, Ldo;->a:[B

    iget v2, p0, Ldo;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ldo;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_3

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Ldo;->c:I

    invoke-direct {p0, v2, v3}, Ldo;->b(II)V

    :cond_3
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    iget v1, p0, Ldo;->c:I

    iget v2, p0, Ldo;->d:I

    if-lt v1, v2, :cond_4

    invoke-virtual {p0}, Ldo;->o()V

    :cond_4
    iget-object v1, p0, Ldo;->a:[B

    iget v2, p0, Ldo;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ldo;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_5

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Ldo;->c:I

    invoke-direct {p0, v2, v3}, Ldo;->b(II)V

    :cond_5
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    const/high16 v1, 0x10000

    sub-int/2addr v0, v1

    return v0
.end method

.method private l(I)V
    .locals 1

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ldo;->a(I)V

    :cond_0
    invoke-direct {p0, p1}, Ldo;->m(I)V

    return-void
.end method

.method private m(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldo;->c(Ljava/lang/String;)V

    return-void
.end method

.method private n(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldo;->c(Ljava/lang/String;)V

    return-void
.end method

.method private final q()I
    .locals 4

    const/16 v3, 0x20

    :cond_0
    :goto_0
    iget v0, p0, Ldo;->c:I

    iget v1, p0, Ldo;->d:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Ldo;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    iget-object v0, p0, Ldo;->a:[B

    iget v1, p0, Ldo;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldo;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v3, :cond_3

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    return v0

    :cond_2
    invoke-direct {p0}, Ldo;->r()V

    goto :goto_0

    :cond_3
    if-eq v0, v3, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Ldo;->u()V

    goto :goto_0

    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Ldo;->t()V

    goto :goto_0

    :cond_5
    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ldo;->a(I)V

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected end-of-input within/between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ldo;->k:Ldd;

    invoke-virtual {v1}, Ldd;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ldo;->d(Ljava/lang/String;)Lz;

    move-result-object v0

    throw v0
.end method

.method private final r()V
    .locals 5

    const/16 v4, 0x2f

    sget-object v0, Laq;->b:Laq;

    invoke-virtual {p0, v0}, Ldo;->a(Laq;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v4, v0}, Ldo;->b(ILjava/lang/String;)V

    :cond_0
    iget v0, p0, Ldo;->c:I

    iget v1, p0, Ldo;->d:I

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Ldo;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Ldo;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Ldo;->a:[B

    iget v1, p0, Ldo;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldo;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v4, :cond_5

    invoke-static {}, Le;->e()[I

    move-result-object v0

    :cond_2
    :goto_0
    :sswitch_0
    iget v1, p0, Ldo;->c:I

    iget v2, p0, Ldo;->d:I

    if-lt v1, v2, :cond_3

    invoke-virtual {p0}, Ldo;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Ldo;->a:[B

    iget v2, p0, Ldo;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ldo;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    aget v2, v0, v1

    if-eqz v2, :cond_2

    sparse-switch v2, :sswitch_data_0

    invoke-direct {p0, v1}, Ldo;->l(I)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Ldo;->u()V

    :cond_4
    :goto_1
    return-void

    :sswitch_2
    invoke-direct {p0}, Ldo;->t()V

    goto :goto_1

    :cond_5
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_9

    invoke-static {}, Le;->e()[I

    move-result-object v0

    :cond_6
    :goto_2
    iget v1, p0, Ldo;->c:I

    iget v2, p0, Ldo;->d:I

    if-lt v1, v2, :cond_7

    invoke-virtual {p0}, Ldo;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    iget-object v1, p0, Ldo;->a:[B

    iget v2, p0, Ldo;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ldo;->c:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    aget v2, v0, v1

    if-eqz v2, :cond_6

    sparse-switch v2, :sswitch_data_1

    invoke-direct {p0, v1}, Ldo;->l(I)V

    goto :goto_2

    :sswitch_3
    iget-object v1, p0, Ldo;->a:[B

    iget v2, p0, Ldo;->c:I

    aget-byte v1, v1, v2

    if-ne v1, v4, :cond_6

    iget v0, p0, Ldo;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldo;->c:I

    goto :goto_1

    :sswitch_4
    invoke-direct {p0}, Ldo;->u()V

    goto :goto_2

    :sswitch_5
    invoke-direct {p0}, Ldo;->t()V

    goto :goto_2

    :cond_8
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Ldo;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Ldo;->b(ILjava/lang/String;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_2
        0x2a -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_4
        0xd -> :sswitch_5
        0x2a -> :sswitch_3
    .end sparse-switch
.end method

.method private s()C
    .locals 5

    const/4 v3, 0x0

    iget v0, p0, Ldo;->c:I

    iget v1, p0, Ldo;->d:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ldo;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " in character escape sequence"

    invoke-virtual {p0, v0}, Ldo;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ldo;->a:[B

    iget v1, p0, Ldo;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldo;->c:I

    aget-byte v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v0}, Ldo;->g(I)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ldo;->a(C)C

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_2
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_3
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_4
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_5
    int-to-char v0, v0

    goto :goto_0

    :sswitch_6
    move v0, v3

    move v1, v3

    :goto_1
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    iget v2, p0, Ldo;->c:I

    iget v3, p0, Ldo;->d:I

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Ldo;->a()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Ldo;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Ldo;->a:[B

    iget v3, p0, Ldo;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ldo;->c:I

    aget-byte v2, v2, v3

    invoke-static {v2}, Le;->a(I)I

    move-result v3

    if-gez v3, :cond_2

    const-string v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Ldo;->b(ILjava/lang/String;)V

    :cond_2
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    int-to-char v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_5
        0x2f -> :sswitch_5
        0x5c -> :sswitch_5
        0x62 -> :sswitch_0
        0x66 -> :sswitch_3
        0x6e -> :sswitch_2
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_6
    .end sparse-switch
.end method

.method private t()V
    .locals 2

    iget v0, p0, Ldo;->c:I

    iget v1, p0, Ldo;->d:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ldo;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Ldo;->a:[B

    iget v1, p0, Ldo;->c:I

    aget-byte v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget v0, p0, Ldo;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldo;->c:I

    :cond_1
    iget v0, p0, Ldo;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldo;->f:I

    iget v0, p0, Ldo;->c:I

    iput v0, p0, Ldo;->g:I

    return-void
.end method

.method private u()V
    .locals 1

    iget v0, p0, Ldo;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldo;->f:I

    iget v0, p0, Ldo;->c:I

    iput v0, p0, Ldo;->g:I

    return-void
.end method

.method private v()I
    .locals 3

    iget v0, p0, Ldo;->c:I

    iget v1, p0, Ldo;->d:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ldo;->o()V

    :cond_0
    iget-object v0, p0, Ldo;->a:[B

    iget v1, p0, Ldo;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldo;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method public final close()V
    .locals 1

    invoke-super {p0}, Lb;->close()V

    iget-object v0, p0, Ldo;->u:Ldg;

    invoke-virtual {v0}, Ldg;->b()V

    return-void
.end method

.method public final g()Lcg;
    .locals 12

    const/4 v10, 0x2

    const/16 v9, 0x80

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/16 v7, 0x22

    iget-object v0, p0, Ldo;->q:Lcg;

    sget-object v1, Lcg;->e:Lcg;

    if-ne v0, v1, :cond_2

    iput-boolean v2, p0, Ldo;->n:Z

    iget-object v0, p0, Ldo;->l:Lcg;

    const/4 v1, 0x0

    iput-object v1, p0, Ldo;->l:Lcg;

    sget-object v1, Lcg;->c:Lcg;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Ldo;->k:Ldd;

    iget v2, p0, Ldo;->i:I

    iget v3, p0, Ldo;->j:I

    invoke-virtual {v1, v2, v3}, Ldd;->a(II)Ldd;

    move-result-object v1

    iput-object v1, p0, Ldo;->k:Ldd;

    :cond_0
    :goto_0
    iput-object v0, p0, Ldo;->q:Lcg;

    :goto_1
    return-object v0

    :cond_1
    sget-object v1, Lcg;->a:Lcg;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Ldo;->k:Ldd;

    iget v2, p0, Ldo;->i:I

    iget v3, p0, Ldo;->j:I

    invoke-virtual {v1, v2, v3}, Ldd;->b(II)Ldd;

    move-result-object v1

    iput-object v1, p0, Ldo;->k:Ldd;

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Ldo;->w:Z

    if-eqz v0, :cond_10

    iput-boolean v2, p0, Ldo;->w:Z

    sget-object v0, Ldo;->r:[I

    iget-object v1, p0, Ldo;->a:[B

    :cond_3
    :goto_2
    iget v3, p0, Ldo;->c:I

    iget v4, p0, Ldo;->d:I

    if-lt v3, v4, :cond_38

    invoke-virtual {p0}, Ldo;->o()V

    iget v3, p0, Ldo;->c:I

    iget v4, p0, Ldo;->d:I

    move v11, v4

    move v4, v3

    move v3, v11

    :goto_3
    if-ge v4, v3, :cond_4

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    aget v6, v0, v4

    if-eqz v6, :cond_37

    iput v5, p0, Ldo;->c:I

    if-eq v4, v7, :cond_10

    aget v3, v0, v4

    packed-switch v3, :pswitch_data_0

    const/16 v3, 0x20

    if-ge v4, v3, :cond_e

    const-string v3, "string value"

    invoke-virtual {p0, v4, v3}, Ldo;->c(ILjava/lang/String;)V

    goto :goto_2

    :cond_4
    iput v4, p0, Ldo;->c:I

    goto :goto_2

    :pswitch_0
    invoke-direct {p0}, Ldo;->s()C

    goto :goto_2

    :pswitch_1
    iget v3, p0, Ldo;->c:I

    iget v4, p0, Ldo;->d:I

    if-lt v3, v4, :cond_5

    invoke-virtual {p0}, Ldo;->o()V

    :cond_5
    iget-object v3, p0, Ldo;->a:[B

    iget v4, p0, Ldo;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ldo;->c:I

    aget-byte v3, v3, v4

    and-int/lit16 v4, v3, 0xc0

    if-eq v4, v9, :cond_3

    and-int/lit16 v3, v3, 0xff

    iget v4, p0, Ldo;->c:I

    invoke-direct {p0, v3, v4}, Ldo;->b(II)V

    goto :goto_2

    :pswitch_2
    iget v3, p0, Ldo;->c:I

    iget v4, p0, Ldo;->d:I

    if-lt v3, v4, :cond_6

    invoke-virtual {p0}, Ldo;->o()V

    :cond_6
    iget-object v3, p0, Ldo;->a:[B

    iget v4, p0, Ldo;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ldo;->c:I

    aget-byte v3, v3, v4

    and-int/lit16 v4, v3, 0xc0

    if-eq v4, v9, :cond_7

    and-int/lit16 v3, v3, 0xff

    iget v4, p0, Ldo;->c:I

    invoke-direct {p0, v3, v4}, Ldo;->b(II)V

    :cond_7
    iget v3, p0, Ldo;->c:I

    iget v4, p0, Ldo;->d:I

    if-lt v3, v4, :cond_8

    invoke-virtual {p0}, Ldo;->o()V

    :cond_8
    iget-object v3, p0, Ldo;->a:[B

    iget v4, p0, Ldo;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ldo;->c:I

    aget-byte v3, v3, v4

    and-int/lit16 v4, v3, 0xc0

    if-eq v4, v9, :cond_3

    and-int/lit16 v3, v3, 0xff

    iget v4, p0, Ldo;->c:I

    invoke-direct {p0, v3, v4}, Ldo;->b(II)V

    goto/16 :goto_2

    :pswitch_3
    iget v3, p0, Ldo;->c:I

    iget v4, p0, Ldo;->d:I

    if-lt v3, v4, :cond_9

    invoke-virtual {p0}, Ldo;->o()V

    :cond_9
    iget-object v3, p0, Ldo;->a:[B

    iget v4, p0, Ldo;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ldo;->c:I

    aget-byte v3, v3, v4

    and-int/lit16 v4, v3, 0xc0

    if-eq v4, v9, :cond_a

    and-int/lit16 v4, v3, 0xff

    iget v5, p0, Ldo;->c:I

    invoke-direct {p0, v4, v5}, Ldo;->b(II)V

    :cond_a
    iget v4, p0, Ldo;->c:I

    iget v5, p0, Ldo;->d:I

    if-lt v4, v5, :cond_b

    invoke-virtual {p0}, Ldo;->o()V

    :cond_b
    and-int/lit16 v4, v3, 0xc0

    if-eq v4, v9, :cond_c

    and-int/lit16 v3, v3, 0xff

    iget v4, p0, Ldo;->c:I

    invoke-direct {p0, v3, v4}, Ldo;->b(II)V

    :cond_c
    iget v3, p0, Ldo;->c:I

    iget v4, p0, Ldo;->d:I

    if-lt v3, v4, :cond_d

    invoke-virtual {p0}, Ldo;->o()V

    :cond_d
    iget-object v3, p0, Ldo;->a:[B

    iget v4, p0, Ldo;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ldo;->c:I

    aget-byte v3, v3, v4

    and-int/lit16 v4, v3, 0xc0

    if-eq v4, v9, :cond_3

    and-int/lit16 v3, v3, 0xff

    iget v4, p0, Ldo;->c:I

    invoke-direct {p0, v3, v4}, Ldo;->b(II)V

    goto/16 :goto_2

    :cond_e
    invoke-direct {p0, v4}, Ldo;->l(I)V

    goto/16 :goto_2

    :cond_f
    invoke-direct {p0}, Ldo;->r()V

    :cond_10
    :goto_4
    iget v0, p0, Ldo;->c:I

    iget v1, p0, Ldo;->d:I

    if-lt v0, v1, :cond_11

    invoke-virtual {p0}, Ldo;->a()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_11
    iget-object v0, p0, Ldo;->a:[B

    iget v1, p0, Ldo;->c:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ldo;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x20

    if-le v0, v1, :cond_12

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_f

    :goto_5
    if-gez v0, :cond_16

    invoke-virtual {p0}, Ldo;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldo;->q:Lcg;

    goto/16 :goto_1

    :cond_12
    const/16 v1, 0x20

    if-eq v0, v1, :cond_10

    const/16 v1, 0xa

    if-ne v0, v1, :cond_13

    invoke-direct {p0}, Ldo;->u()V

    goto :goto_4

    :cond_13
    const/16 v1, 0xd

    if-ne v0, v1, :cond_14

    invoke-direct {p0}, Ldo;->t()V

    goto :goto_4

    :cond_14
    const/16 v1, 0x9

    if-eq v0, v1, :cond_10

    invoke-virtual {p0, v0}, Ldo;->a(I)V

    goto :goto_4

    :cond_15
    invoke-virtual {p0}, Ldo;->i()V

    const/4 v0, -0x1

    goto :goto_5

    :cond_16
    iget-wide v3, p0, Ldo;->e:J

    iget v1, p0, Ldo;->c:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Ldo;->h:J

    iget v1, p0, Ldo;->f:I

    iput v1, p0, Ldo;->i:I

    iget v1, p0, Ldo;->c:I

    iget v3, p0, Ldo;->g:I

    sub-int/2addr v1, v3

    sub-int/2addr v1, v8

    iput v1, p0, Ldo;->j:I

    const/4 v1, 0x0

    iput-object v1, p0, Ldo;->o:[B

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_18

    iget-object v1, p0, Ldo;->k:Ldd;

    invoke-virtual {v1}, Ldd;->a()Z

    move-result v1

    if-nez v1, :cond_17

    const/16 v1, 0x7d

    invoke-virtual {p0, v0, v1}, Ldo;->a(IC)V

    :cond_17
    iget-object v0, p0, Ldo;->k:Ldd;

    invoke-virtual {v0}, Ldd;->g()Ldd;

    move-result-object v0

    iput-object v0, p0, Ldo;->k:Ldd;

    sget-object v0, Lcg;->d:Lcg;

    iput-object v0, p0, Ldo;->q:Lcg;

    goto/16 :goto_1

    :cond_18
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_1a

    iget-object v1, p0, Ldo;->k:Ldd;

    invoke-virtual {v1}, Ldd;->c()Z

    move-result v1

    if-nez v1, :cond_19

    const/16 v1, 0x5d

    invoke-virtual {p0, v0, v1}, Ldo;->a(IC)V

    :cond_19
    iget-object v0, p0, Ldo;->k:Ldd;

    invoke-virtual {v0}, Ldd;->g()Ldd;

    move-result-object v0

    iput-object v0, p0, Ldo;->k:Ldd;

    sget-object v0, Lcg;->b:Lcg;

    iput-object v0, p0, Ldo;->q:Lcg;

    goto/16 :goto_1

    :cond_1a
    iget-object v1, p0, Ldo;->k:Ldd;

    invoke-virtual {v1}, Ldd;->h()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "was expecting comma to separate "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Ldo;->k:Ldd;

    invoke-virtual {v3}, Ldd;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " entries"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ldo;->b(ILjava/lang/String;)V

    :cond_1b
    invoke-direct {p0}, Ldo;->q()I

    move-result v0

    :cond_1c
    iget-object v1, p0, Ldo;->k:Ldd;

    invoke-virtual {v1}, Ldd;->c()Z

    move-result v1

    if-nez v1, :cond_1e

    if-ne v0, v7, :cond_1d

    iput-boolean v8, p0, Ldo;->w:Z

    sget-object v0, Lcg;->g:Lcg;

    iput-object v0, p0, Ldo;->q:Lcg;

    goto/16 :goto_1

    :cond_1d
    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v0}, Ldo;->f(I)Lcg;

    move-result-object v0

    iput-object v0, p0, Ldo;->q:Lcg;

    goto/16 :goto_1

    :sswitch_0
    iget-object v0, p0, Ldo;->k:Ldd;

    iget v1, p0, Ldo;->i:I

    iget v2, p0, Ldo;->j:I

    invoke-virtual {v0, v1, v2}, Ldd;->a(II)Ldd;

    move-result-object v0

    iput-object v0, p0, Ldo;->k:Ldd;

    sget-object v0, Lcg;->c:Lcg;

    iput-object v0, p0, Ldo;->q:Lcg;

    goto/16 :goto_1

    :sswitch_1
    iget-object v0, p0, Ldo;->k:Ldd;

    iget v1, p0, Ldo;->i:I

    iget v2, p0, Ldo;->j:I

    invoke-virtual {v0, v1, v2}, Ldd;->b(II)Ldd;

    move-result-object v0

    iput-object v0, p0, Ldo;->k:Ldd;

    sget-object v0, Lcg;->a:Lcg;

    iput-object v0, p0, Ldo;->q:Lcg;

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "expected a value"

    invoke-virtual {p0, v0, v1}, Ldo;->b(ILjava/lang/String;)V

    :sswitch_3
    sget-object v0, Lcg;->j:Lcg;

    invoke-direct {p0, v0}, Ldo;->a(Lcg;)V

    sget-object v0, Lcg;->j:Lcg;

    iput-object v0, p0, Ldo;->q:Lcg;

    goto/16 :goto_1

    :sswitch_4
    sget-object v0, Lcg;->k:Lcg;

    invoke-direct {p0, v0}, Ldo;->a(Lcg;)V

    sget-object v0, Lcg;->k:Lcg;

    iput-object v0, p0, Ldo;->q:Lcg;

    goto/16 :goto_1

    :sswitch_5
    sget-object v0, Lcg;->l:Lcg;

    invoke-direct {p0, v0}, Ldo;->a(Lcg;)V

    sget-object v0, Lcg;->l:Lcg;

    iput-object v0, p0, Ldo;->q:Lcg;

    goto/16 :goto_1

    :sswitch_6
    invoke-direct {p0, v0}, Ldo;->c(I)Lcg;

    move-result-object v0

    iput-object v0, p0, Ldo;->q:Lcg;

    goto/16 :goto_1

    :cond_1e
    if-eq v0, v7, :cond_20

    invoke-direct {p0, v0}, Ldo;->e(I)Lcj;

    move-result-object v0

    :goto_6
    iget-object v1, p0, Ldo;->k:Ldd;

    invoke-virtual {v0}, Lcj;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldd;->a(Ljava/lang/String;)V

    sget-object v0, Lcg;->e:Lcg;

    iput-object v0, p0, Ldo;->q:Lcg;

    invoke-direct {p0}, Ldo;->q()I

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_1f

    const-string v1, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v1}, Ldo;->b(ILjava/lang/String;)V

    :cond_1f
    invoke-direct {p0}, Ldo;->q()I

    move-result v0

    if-ne v0, v7, :cond_36

    iput-boolean v8, p0, Ldo;->w:Z

    sget-object v0, Lcg;->g:Lcg;

    iput-object v0, p0, Ldo;->l:Lcg;

    iget-object v0, p0, Ldo;->q:Lcg;

    goto/16 :goto_1

    :cond_20
    iget v0, p0, Ldo;->c:I

    add-int/lit8 v0, v0, 0x9

    iget v1, p0, Ldo;->d:I

    if-le v0, v1, :cond_23

    iget v0, p0, Ldo;->c:I

    iget v1, p0, Ldo;->d:I

    if-lt v0, v1, :cond_21

    invoke-virtual {p0}, Ldo;->a()Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, ": was expecting closing \'\"\' for name"

    invoke-virtual {p0, v0}, Ldo;->b(Ljava/lang/String;)V

    :cond_21
    iget-object v0, p0, Ldo;->a:[B

    iget v1, p0, Ldo;->c:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ldo;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    if-ne v4, v7, :cond_22

    invoke-static {}, Ldg;->c()Lcj;

    move-result-object v0

    goto :goto_6

    :cond_22
    iget-object v1, p0, Ldo;->v:[I

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Ldo;->a([IIIII)Lcj;

    move-result-object v0

    goto :goto_6

    :cond_23
    iget-object v0, p0, Ldo;->a:[B

    sget-object v1, Ldo;->s:[I

    iget v3, p0, Ldo;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ldo;->c:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    if-nez v4, :cond_34

    iget v4, p0, Ldo;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ldo;->c:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    aget v5, v1, v4

    if-nez v5, :cond_32

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    iget v4, p0, Ldo;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ldo;->c:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    aget v5, v1, v4

    if-nez v5, :cond_30

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    iget v4, p0, Ldo;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ldo;->c:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    aget v5, v1, v4

    if-nez v5, :cond_2e

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    iget v4, p0, Ldo;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ldo;->c:I

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    aget v4, v1, v0

    if-nez v4, :cond_2c

    iput v3, p0, Ldo;->x:I

    iget-object v3, p0, Ldo;->a:[B

    iget v4, p0, Ldo;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ldo;->c:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    if-eqz v4, :cond_25

    if-ne v3, v7, :cond_24

    iget v1, p0, Ldo;->x:I

    invoke-direct {p0, v1, v0, v8}, Ldo;->b(III)Lcj;

    move-result-object v0

    goto/16 :goto_6

    :cond_24
    iget v1, p0, Ldo;->x:I

    invoke-direct {p0, v1, v0, v3, v8}, Ldo;->a(IIII)Lcj;

    move-result-object v0

    goto/16 :goto_6

    :cond_25
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    iget-object v3, p0, Ldo;->a:[B

    iget v4, p0, Ldo;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ldo;->c:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    if-eqz v4, :cond_27

    if-ne v3, v7, :cond_26

    iget v1, p0, Ldo;->x:I

    invoke-direct {p0, v1, v0, v10}, Ldo;->b(III)Lcj;

    move-result-object v0

    goto/16 :goto_6

    :cond_26
    iget v1, p0, Ldo;->x:I

    invoke-direct {p0, v1, v0, v3, v10}, Ldo;->a(IIII)Lcj;

    move-result-object v0

    goto/16 :goto_6

    :cond_27
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    iget-object v3, p0, Ldo;->a:[B

    iget v4, p0, Ldo;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ldo;->c:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    if-eqz v4, :cond_29

    if-ne v3, v7, :cond_28

    iget v1, p0, Ldo;->x:I

    const/4 v2, 0x3

    invoke-direct {p0, v1, v0, v2}, Ldo;->b(III)Lcj;

    move-result-object v0

    goto/16 :goto_6

    :cond_28
    iget v1, p0, Ldo;->x:I

    const/4 v2, 0x3

    invoke-direct {p0, v1, v0, v3, v2}, Ldo;->a(IIII)Lcj;

    move-result-object v0

    goto/16 :goto_6

    :cond_29
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    iget-object v3, p0, Ldo;->a:[B

    iget v4, p0, Ldo;->c:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ldo;->c:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v1, v1, v3

    if-eqz v1, :cond_2b

    if-ne v3, v7, :cond_2a

    iget v1, p0, Ldo;->x:I

    const/4 v2, 0x4

    invoke-direct {p0, v1, v0, v2}, Ldo;->b(III)Lcj;

    move-result-object v0

    goto/16 :goto_6

    :cond_2a
    iget v1, p0, Ldo;->x:I

    const/4 v2, 0x4

    invoke-direct {p0, v1, v0, v3, v2}, Ldo;->a(IIII)Lcj;

    move-result-object v0

    goto/16 :goto_6

    :cond_2b
    iget-object v1, p0, Ldo;->v:[I

    iget v4, p0, Ldo;->x:I

    aput v4, v1, v2

    iget-object v1, p0, Ldo;->v:[I

    aput v0, v1, v8

    invoke-direct {p0, v3}, Ldo;->d(I)Lcj;

    move-result-object v0

    goto/16 :goto_6

    :cond_2c
    if-ne v0, v7, :cond_2d

    const/4 v0, 0x4

    invoke-direct {p0, v3, v0}, Ldo;->a(II)Lcj;

    move-result-object v0

    goto/16 :goto_6

    :cond_2d
    const/4 v1, 0x4

    invoke-direct {p0, v3, v0, v1}, Ldo;->a(III)Lcj;

    move-result-object v0

    goto/16 :goto_6

    :cond_2e
    if-ne v4, v7, :cond_2f

    const/4 v0, 0x3

    invoke-direct {p0, v3, v0}, Ldo;->a(II)Lcj;

    move-result-object v0

    goto/16 :goto_6

    :cond_2f
    const/4 v0, 0x3

    invoke-direct {p0, v3, v4, v0}, Ldo;->a(III)Lcj;

    move-result-object v0

    goto/16 :goto_6

    :cond_30
    if-ne v4, v7, :cond_31

    invoke-direct {p0, v3, v10}, Ldo;->a(II)Lcj;

    move-result-object v0

    goto/16 :goto_6

    :cond_31
    invoke-direct {p0, v3, v4, v10}, Ldo;->a(III)Lcj;

    move-result-object v0

    goto/16 :goto_6

    :cond_32
    if-ne v4, v7, :cond_33

    invoke-direct {p0, v3, v8}, Ldo;->a(II)Lcj;

    move-result-object v0

    goto/16 :goto_6

    :cond_33
    invoke-direct {p0, v3, v4, v8}, Ldo;->a(III)Lcj;

    move-result-object v0

    goto/16 :goto_6

    :cond_34
    if-ne v3, v7, :cond_35

    invoke-static {}, Ldg;->c()Lcj;

    move-result-object v0

    goto/16 :goto_6

    :cond_35
    invoke-direct {p0, v2, v3, v2}, Ldo;->a(III)Lcj;

    move-result-object v0

    goto/16 :goto_6

    :cond_36
    sparse-switch v0, :sswitch_data_1

    invoke-direct {p0, v0}, Ldo;->f(I)Lcg;

    move-result-object v0

    :goto_7
    iput-object v0, p0, Ldo;->l:Lcg;

    iget-object v0, p0, Ldo;->q:Lcg;

    goto/16 :goto_1

    :sswitch_7
    sget-object v0, Lcg;->c:Lcg;

    goto :goto_7

    :sswitch_8
    sget-object v0, Lcg;->a:Lcg;

    goto :goto_7

    :sswitch_9
    const-string v1, "expected a value"

    invoke-virtual {p0, v0, v1}, Ldo;->b(ILjava/lang/String;)V

    :sswitch_a
    sget-object v0, Lcg;->j:Lcg;

    invoke-direct {p0, v0}, Ldo;->a(Lcg;)V

    sget-object v0, Lcg;->j:Lcg;

    goto :goto_7

    :sswitch_b
    sget-object v0, Lcg;->k:Lcg;

    invoke-direct {p0, v0}, Ldo;->a(Lcg;)V

    sget-object v0, Lcg;->k:Lcg;

    goto :goto_7

    :sswitch_c
    sget-object v0, Lcg;->l:Lcg;

    invoke-direct {p0, v0}, Ldo;->a(Lcg;)V

    sget-object v0, Lcg;->l:Lcg;

    goto :goto_7

    :sswitch_d
    invoke-direct {p0, v0}, Ldo;->c(I)Lcg;

    move-result-object v0

    goto :goto_7

    :cond_37
    move v4, v5

    goto/16 :goto_3

    :cond_38
    move v11, v4

    move v4, v3

    move v3, v11

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_6
        0x30 -> :sswitch_6
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x5b -> :sswitch_0
        0x5d -> :sswitch_2
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_3
        0x7b -> :sswitch_1
        0x7d -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2d -> :sswitch_d
        0x30 -> :sswitch_d
        0x31 -> :sswitch_d
        0x32 -> :sswitch_d
        0x33 -> :sswitch_d
        0x34 -> :sswitch_d
        0x35 -> :sswitch_d
        0x36 -> :sswitch_d
        0x37 -> :sswitch_d
        0x38 -> :sswitch_d
        0x39 -> :sswitch_d
        0x5b -> :sswitch_7
        0x5d -> :sswitch_9
        0x66 -> :sswitch_b
        0x6e -> :sswitch_c
        0x74 -> :sswitch_a
        0x7b -> :sswitch_8
        0x7d -> :sswitch_9
    .end sparse-switch
.end method

.method public final j()Ljava/lang/String;
    .locals 11

    const/16 v9, 0x22

    const/4 v8, 0x0

    iget-object v0, p0, Ldo;->q:Lcg;

    sget-object v1, Lcg;->g:Lcg;

    if-ne v0, v1, :cond_b

    iget-boolean v0, p0, Ldo;->w:Z

    if-eqz v0, :cond_1

    iput-boolean v8, p0, Ldo;->w:Z

    iget v0, p0, Ldo;->c:I

    iget v1, p0, Ldo;->d:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ldo;->o()V

    iget v0, p0, Ldo;->c:I

    :cond_0
    iget-object v1, p0, Ldo;->m:Lcb;

    invoke-virtual {v1}, Lcb;->i()[C

    move-result-object v1

    sget-object v2, Ldo;->r:[I

    iget v3, p0, Ldo;->d:I

    array-length v4, v1

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Ldo;->a:[B

    move v5, v0

    move v0, v8

    :goto_0
    if-ge v5, v3, :cond_3

    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    aget v7, v2, v6

    if-eqz v7, :cond_2

    if-ne v6, v9, :cond_3

    add-int/lit8 v1, v5, 0x1

    iput v1, p0, Ldo;->c:I

    move-object v1, p0

    :goto_1
    iget-object v1, v1, Ldo;->m:Lcb;

    invoke-virtual {v1, v0}, Lcb;->a(I)V

    :cond_1
    iget-object v0, p0, Ldo;->m:Lcb;

    invoke-virtual {v0}, Lcb;->e()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v0, 0x1

    int-to-char v6, v6

    aput-char v6, v1, v0

    move v0, v7

    goto :goto_0

    :cond_3
    iput v5, p0, Ldo;->c:I

    sget-object v2, Ldo;->r:[I

    iget-object v3, p0, Ldo;->a:[B

    :goto_3
    iget v4, p0, Ldo;->c:I

    iget v5, p0, Ldo;->d:I

    if-lt v4, v5, :cond_4

    invoke-virtual {p0}, Ldo;->o()V

    iget v4, p0, Ldo;->c:I

    :cond_4
    array-length v5, v1

    if-lt v0, v5, :cond_5

    iget-object v0, p0, Ldo;->m:Lcb;

    invoke-virtual {v0}, Lcb;->k()[C

    move-result-object v0

    move-object v1, v0

    move v0, v8

    :cond_5
    iget v5, p0, Ldo;->d:I

    array-length v6, v1

    sub-int/2addr v6, v0

    add-int/2addr v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v10, v4

    move v4, v0

    move v0, v10

    :goto_4
    if-ge v0, v5, :cond_8

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    aget v7, v2, v0

    if-eqz v7, :cond_7

    iput v6, p0, Ldo;->c:I

    if-eq v0, v9, :cond_e

    aget v5, v2, v0

    packed-switch v5, :pswitch_data_0

    const/16 v5, 0x20

    if-ge v0, v5, :cond_a

    const-string v5, "string value"

    invoke-virtual {p0, v0, v5}, Ldo;->c(ILjava/lang/String;)V

    move v10, v4

    move-object v4, v1

    move v1, v10

    :goto_5
    array-length v5, v4

    if-lt v1, v5, :cond_6

    iget-object v1, p0, Ldo;->m:Lcb;

    invoke-virtual {v1}, Lcb;->k()[C

    move-result-object v1

    move-object v4, v1

    move v1, v8

    :cond_6
    add-int/lit8 v5, v1, 0x1

    int-to-char v0, v0

    aput-char v0, v4, v1

    move v0, v5

    move-object v1, v4

    goto :goto_3

    :cond_7
    add-int/lit8 v7, v4, 0x1

    int-to-char v0, v0

    aput-char v0, v1, v4

    move v0, v6

    move v4, v7

    goto :goto_4

    :cond_8
    iput v0, p0, Ldo;->c:I

    move v0, v4

    goto :goto_3

    :pswitch_0
    invoke-direct {p0}, Ldo;->s()C

    move-result v0

    move v10, v4

    move-object v4, v1

    move v1, v10

    goto :goto_5

    :pswitch_1
    invoke-direct {p0, v0}, Ldo;->h(I)I

    move-result v0

    move v10, v4

    move-object v4, v1

    move v1, v10

    goto :goto_5

    :pswitch_2
    iget v5, p0, Ldo;->d:I

    iget v6, p0, Ldo;->c:I

    sub-int/2addr v5, v6

    const/4 v6, 0x2

    if-lt v5, v6, :cond_9

    invoke-direct {p0, v0}, Ldo;->j(I)I

    move-result v0

    move v10, v4

    move-object v4, v1

    move v1, v10

    goto :goto_5

    :cond_9
    invoke-direct {p0, v0}, Ldo;->i(I)I

    move-result v0

    move v10, v4

    move-object v4, v1

    move v1, v10

    goto :goto_5

    :pswitch_3
    invoke-direct {p0, v0}, Ldo;->k(I)I

    move-result v0

    add-int/lit8 v5, v4, 0x1

    const v6, 0xd800

    shr-int/lit8 v7, v0, 0xa

    or-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v1, v4

    array-length v4, v1

    if-lt v5, v4, :cond_d

    iget-object v1, p0, Ldo;->m:Lcb;

    invoke-virtual {v1}, Lcb;->k()[C

    move-result-object v1

    move-object v4, v1

    move v1, v8

    :goto_6
    const v5, 0xdc00

    and-int/lit16 v0, v0, 0x3ff

    or-int/2addr v0, v5

    goto :goto_5

    :cond_a
    invoke-direct {p0, v0}, Ldo;->l(I)V

    move v10, v4

    move-object v4, v1

    move v1, v10

    goto :goto_5

    :cond_b
    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_c
    sget-object v1, Lar;->a:[I

    invoke-virtual {v0}, Lcg;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    invoke-virtual {v0}, Lcg;->a()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_4
    iget-object v0, p0, Ldo;->k:Ldd;

    invoke-virtual {v0}, Ldd;->f()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_5
    iget-object v0, p0, Ldo;->m:Lcb;

    invoke-virtual {v0}, Lcb;->e()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_d
    move-object v4, v1

    move v1, v5

    goto :goto_6

    :cond_e
    move v0, v4

    move-object v1, p0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
