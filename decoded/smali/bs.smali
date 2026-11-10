.class public final Lbs;
.super Ljava/lang/Object;


# instance fields
.field private a:Lr;

.field private b:Ljava/io/InputStream;

.field private c:[B

.field private d:I

.field private e:I

.field private final f:Z

.field private g:I

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>(Lr;[BII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbs;->h:Z

    iput v1, p0, Lbs;->i:I

    iput-object p1, p0, Lbs;->a:Lr;

    const/4 v0, 0x0

    iput-object v0, p0, Lbs;->b:Ljava/io/InputStream;

    iput-object p2, p0, Lbs;->c:[B

    iput v1, p0, Lbs;->d:I

    add-int/lit8 v0, p4, 0x0

    iput v0, p0, Lbs;->e:I

    iput v1, p0, Lbs;->g:I

    iput-boolean v1, p0, Lbs;->f:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/CharConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported UCS-4 endianness ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") detected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(I)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0xff00

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lbs;->h:Z

    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lbs;->i:I

    move v0, v2

    :goto_1
    return v0

    :cond_0
    and-int/lit16 v0, p1, 0xff

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lbs;->h:Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private b(I)Z
    .locals 6

    iget v0, p0, Lbs;->e:I

    iget v1, p0, Lbs;->d:I

    sub-int/2addr v0, v1

    :goto_0
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lbs;->b:Ljava/io/InputStream;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_1
    if-gtz v1, :cond_1

    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_0
    iget-object v1, p0, Lbs;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lbs;->c:[B

    iget v3, p0, Lbs;->e:I

    iget-object v4, p0, Lbs;->c:[B

    array-length v4, v4

    iget v5, p0, Lbs;->e:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_1

    :cond_1
    iget v2, p0, Lbs;->e:I

    add-int/2addr v2, v1

    iput v2, p0, Lbs;->e:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public final a(ILaj;Ldg;Lcn;)Lbl;
    .locals 11

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v5}, Lbs;->b(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbs;->c:[B

    iget v1, p0, Lbs;->d:I

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lbs;->c:[B

    iget v2, p0, Lbs;->d:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lbs;->c:[B

    iget v2, p0, Lbs;->d:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lbs;->c:[B

    iget v2, p0, Lbs;->d:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    ushr-int/lit8 v1, v0, 0x10

    const v2, 0xfeff

    if-ne v1, v2, :cond_0

    iget v1, p0, Lbs;->d:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lbs;->d:I

    iput v6, p0, Lbs;->i:I

    iput-boolean v3, p0, Lbs;->h:Z

    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    move v0, v3

    :goto_2
    if-nez v0, :cond_a

    sget-object v0, Ly;->a:Ly;

    :goto_3
    iget-object v1, p0, Lbs;->a:Lr;

    invoke-virtual {v1, v0}, Lr;->a(Ly;)V

    sget-object v1, Laq;->h:Laq;

    invoke-virtual {v1, p1}, Laq;->a(I)Z

    move-result v7

    sget-object v1, Laq;->g:Laq;

    invoke-virtual {v1, p1}, Laq;->a(I)Z

    move-result v8

    sget-object v1, Ly;->a:Ly;

    if-ne v0, v1, :cond_f

    if-eqz v7, :cond_f

    invoke-virtual {p3, v7, v8}, Ldg;->a(ZZ)Ldg;

    move-result-object v5

    new-instance v0, Ldo;

    iget-object v1, p0, Lbs;->a:Lr;

    iget-object v3, p0, Lbs;->b:Ljava/io/InputStream;

    iget-object v6, p0, Lbs;->c:[B

    iget v7, p0, Lbs;->d:I

    iget v8, p0, Lbs;->e:I

    iget-boolean v9, p0, Lbs;->f:Z

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v9}, Ldo;-><init>(Lr;ILjava/io/InputStream;Laj;Ldg;[BIIZ)V

    :goto_4
    return-object v0

    :sswitch_0
    iput-boolean v3, p0, Lbs;->h:Z

    iget v1, p0, Lbs;->d:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lbs;->d:I

    iput v5, p0, Lbs;->i:I

    move v1, v3

    goto :goto_1

    :sswitch_1
    iget v1, p0, Lbs;->d:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lbs;->d:I

    iput v5, p0, Lbs;->i:I

    iput-boolean v4, p0, Lbs;->h:Z

    move v1, v3

    goto :goto_1

    :sswitch_2
    const-string v1, "2143"

    invoke-static {v1}, Lbs;->a(Ljava/lang/String;)V

    :sswitch_3
    const-string v1, "3412"

    invoke-static {v1}, Lbs;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const v2, 0xfffe

    if-ne v1, v2, :cond_1

    iget v1, p0, Lbs;->d:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lbs;->d:I

    iput v6, p0, Lbs;->i:I

    iput-boolean v4, p0, Lbs;->h:Z

    move v1, v3

    goto :goto_1

    :cond_1
    ushr-int/lit8 v1, v0, 0x8

    const v2, 0xefbbbf

    if-ne v1, v2, :cond_2

    iget v1, p0, Lbs;->d:I

    add-int/lit8 v1, v1, 0x3

    iput v1, p0, Lbs;->d:I

    iput v3, p0, Lbs;->i:I

    iput-boolean v3, p0, Lbs;->h:Z

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    shr-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_4

    iput-boolean v3, p0, Lbs;->h:Z

    :goto_5
    iput v5, p0, Lbs;->i:I

    move v1, v3

    :goto_6
    if-eqz v1, :cond_8

    move v0, v3

    goto/16 :goto_2

    :cond_4
    const v1, 0xffffff

    and-int/2addr v1, v0

    if-nez v1, :cond_5

    iput-boolean v4, p0, Lbs;->h:Z

    goto :goto_5

    :cond_5
    const v1, -0xff0001

    and-int/2addr v1, v0

    if-nez v1, :cond_6

    const-string v1, "3412"

    invoke-static {v1}, Lbs;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    const v1, -0xff01

    and-int/2addr v1, v0

    if-nez v1, :cond_7

    const-string v1, "2143"

    invoke-static {v1}, Lbs;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    move v1, v4

    goto :goto_6

    :cond_8
    ushr-int/lit8 v0, v0, 0x10

    invoke-direct {p0, v0}, Lbs;->a(I)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v3

    goto/16 :goto_2

    :cond_9
    invoke-direct {p0, v6}, Lbs;->b(I)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbs;->c:[B

    iget v1, p0, Lbs;->d:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lbs;->c:[B

    iget v2, p0, Lbs;->d:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    invoke-direct {p0, v0}, Lbs;->a(I)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v3

    goto/16 :goto_2

    :cond_a
    iget v0, p0, Lbs;->i:I

    if-ne v0, v6, :cond_c

    iget-boolean v0, p0, Lbs;->h:Z

    if-eqz v0, :cond_b

    sget-object v0, Ly;->b:Ly;

    goto/16 :goto_3

    :cond_b
    sget-object v0, Ly;->c:Ly;

    goto/16 :goto_3

    :cond_c
    iget v0, p0, Lbs;->i:I

    if-ne v0, v5, :cond_e

    iget-boolean v0, p0, Lbs;->h:Z

    if-eqz v0, :cond_d

    sget-object v0, Ly;->d:Ly;

    goto/16 :goto_3

    :cond_d
    sget-object v0, Ly;->e:Ly;

    goto/16 :goto_3

    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v9, Lcq;

    iget-object v10, p0, Lbs;->a:Lr;

    iget-object v0, p0, Lbs;->a:Lr;

    invoke-virtual {v0}, Lr;->b()Ly;

    move-result-object v6

    sget-object v0, Lai;->a:[I

    invoke-virtual {v6}, Ly;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Ldn;

    iget-object v1, p0, Lbs;->a:Lr;

    iget-object v2, p0, Lbs;->b:Ljava/io/InputStream;

    iget-object v3, p0, Lbs;->c:[B

    iget v4, p0, Lbs;->d:I

    iget v5, p0, Lbs;->e:I

    iget-object v6, p0, Lbs;->a:Lr;

    invoke-virtual {v6}, Lr;->b()Ly;

    move-result-object v6

    invoke-virtual {v6}, Ly;->b()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Ldn;-><init>(Lr;Ljava/io/InputStream;[BIIZ)V

    move-object v3, v0

    :goto_7
    invoke-virtual {p4, v7, v8}, Lcn;->a(ZZ)Lcn;

    move-result-object v5

    move-object v0, v9

    move-object v1, v10

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcq;-><init>(Lr;ILjava/io/Reader;Laj;Lcn;)V

    move-object v0, v9

    goto/16 :goto_4

    :pswitch_1
    iget-object v2, p0, Lbs;->b:Ljava/io/InputStream;

    if-nez v2, :cond_10

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lbs;->c:[B

    iget v2, p0, Lbs;->d:I

    iget v3, p0, Lbs;->e:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    :goto_8
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ly;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_7

    :cond_10
    iget v0, p0, Lbs;->d:I

    iget v1, p0, Lbs;->e:I

    if-ge v0, v1, :cond_11

    new-instance v0, Lbd;

    iget-object v1, p0, Lbs;->a:Lr;

    iget-object v3, p0, Lbs;->c:[B

    iget v4, p0, Lbs;->d:I

    iget v5, p0, Lbs;->e:I

    invoke-direct/range {v0 .. v5}, Lbd;-><init>(Lr;Ljava/io/InputStream;[BII)V

    goto :goto_8

    :cond_11
    move-object v0, v2

    goto :goto_8

    :cond_12
    move v0, v4

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1010000 -> :sswitch_3
        -0x20000 -> :sswitch_1
        0xfeff -> :sswitch_0
        0xfffe -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
