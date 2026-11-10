.class public final Ldg;
.super Ljava/lang/Object;


# instance fields
.field private a:Ldg;

.field private b:Z

.field private c:I

.field private d:I

.field private e:[I

.field private f:[Lcj;

.field private g:[Lag;

.field private h:I

.field private i:I

.field private transient j:Z

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method private constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldg;->a:Ldg;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldg;->b:Z

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Ldg;->b(I)V

    return-void
.end method

.method private constructor <init>(Ldg;Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldg;->a:Ldg;

    iput-boolean p2, p0, Ldg;->b:Z

    iget v0, p1, Ldg;->c:I

    iput v0, p0, Ldg;->c:I

    iget v0, p1, Ldg;->d:I

    iput v0, p0, Ldg;->d:I

    iget-object v0, p1, Ldg;->e:[I

    iput-object v0, p0, Ldg;->e:[I

    iget-object v0, p1, Ldg;->f:[Lcj;

    iput-object v0, p0, Ldg;->f:[Lcj;

    iget-object v0, p1, Ldg;->g:[Lag;

    iput-object v0, p0, Ldg;->g:[Lag;

    iget v0, p1, Ldg;->h:I

    iput v0, p0, Ldg;->h:I

    iget v0, p1, Ldg;->i:I

    iput v0, p0, Ldg;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldg;->j:Z

    iput-boolean v1, p0, Ldg;->k:Z

    iput-boolean v1, p0, Ldg;->l:Z

    iput-boolean v1, p0, Ldg;->m:Z

    return-void
.end method

.method public static a()Ldg;
    .locals 3

    new-instance v0, Ldg;

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ldg;-><init>(IZ)V

    return-object v0
.end method

.method private declared-synchronized a(Ldg;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p1, Ldg;->c:I

    iget v1, p0, Ldg;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget v0, p1, Ldg;->c:I

    const/16 v1, 0x1770

    if-le v0, v1, :cond_1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Ldg;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget v0, p1, Ldg;->c:I

    iput v0, p0, Ldg;->c:I

    iget-object v0, p1, Ldg;->e:[I

    iput-object v0, p0, Ldg;->e:[I

    iget-object v0, p1, Ldg;->f:[Lcj;

    iput-object v0, p0, Ldg;->f:[Lcj;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldg;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldg;->l:Z

    iget v0, p1, Ldg;->d:I

    iput v0, p0, Ldg;->d:I

    iget-object v0, p1, Ldg;->g:[Lag;

    iput-object v0, p0, Ldg;->g:[Lag;

    iget v0, p1, Ldg;->h:I

    iput v0, p0, Ldg;->h:I

    iget v0, p1, Ldg;->i:I

    iput v0, p0, Ldg;->i:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static b([II)I
    .locals 4

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_0
    if-ge v0, p1, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    aget v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, v1, 0x10

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x8

    xor-int/2addr v0, v1

    return v0
.end method

.method private b(I)V
    .locals 3

    const/16 v2, 0x40

    const/4 v1, 0x0

    iput v1, p0, Ldg;->c:I

    new-array v0, v2, [I

    iput-object v0, p0, Ldg;->e:[I

    new-array v0, v2, [Lcj;

    iput-object v0, p0, Ldg;->f:[Lcj;

    iput-boolean v1, p0, Ldg;->k:Z

    iput-boolean v1, p0, Ldg;->l:Z

    const/16 v0, 0x3f

    iput v0, p0, Ldg;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldg;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ldg;->g:[Lag;

    iput v1, p0, Ldg;->i:I

    iput-boolean v1, p0, Ldg;->j:Z

    return-void
.end method

.method public static c()Lcj;
    .locals 1

    invoke-static {}, Lv;->a()Lv;

    move-result-object v0

    return-object v0
.end method

.method private d()I
    .locals 7

    iget-object v0, p0, Ldg;->g:[Lag;

    const v1, 0x7fffffff

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget v4, p0, Ldg;->i:I

    move v6, v3

    move v3, v1

    move v1, v6

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v0, v1

    invoke-virtual {v5}, Lag;->a()I

    move-result v5

    if-ge v5, v3, :cond_1

    const/4 v2, 0x1

    if-ne v5, v2, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    move v3, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Ldg;->g:[Lag;

    array-length v1, v0

    add-int v2, v1, v1

    new-array v2, v2, [Lag;

    iput-object v2, p0, Ldg;->g:[Lag;

    iget-object v2, p0, Ldg;->g:[Lag;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public final a(I)Lcj;
    .locals 5

    const/4 v4, 0x0

    ushr-int/lit8 v0, p1, 0x10

    xor-int/2addr v0, p1

    ushr-int/lit8 v1, v0, 0x8

    xor-int/2addr v0, v1

    iget v1, p0, Ldg;->d:I

    and-int/2addr v1, v0

    iget-object v2, p0, Ldg;->e:[I

    aget v2, v2, v1

    shr-int/lit8 v3, v2, 0x8

    xor-int/2addr v3, v0

    shl-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_1

    iget-object v3, p0, Ldg;->f:[Lcj;

    aget-object v1, v3, v1

    if-nez v1, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1, p1}, Lcj;->a(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    move-object v0, v4

    goto :goto_0

    :cond_2
    and-int/lit16 v1, v2, 0xff

    if-lez v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Ldg;->g:[Lag;

    aget-object v1, v2, v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lag;->a(III)Lcj;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v4

    goto :goto_0
.end method

.method public final a(II)Lcj;
    .locals 5

    const/4 v4, 0x0

    mul-int/lit8 v0, p1, 0x1f

    add-int/2addr v0, p2

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x8

    xor-int/2addr v0, v1

    iget v1, p0, Ldg;->d:I

    and-int/2addr v1, v0

    iget-object v2, p0, Ldg;->e:[I

    aget v2, v2, v1

    shr-int/lit8 v3, v2, 0x8

    xor-int/2addr v3, v0

    shl-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_1

    iget-object v3, p0, Ldg;->f:[Lcj;

    aget-object v1, v3, v1

    if-nez v1, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1, p1, p2}, Lcj;->a(II)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    move-object v0, v4

    goto :goto_0

    :cond_2
    and-int/lit16 v1, v2, 0xff

    if-lez v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Ldg;->g:[Lag;

    aget-object v1, v2, v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0, p1, p2}, Lag;->a(III)Lcj;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v4

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;[II)Lcj;
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ldg;->b:Z

    move v5, v0

    if-eqz v5, :cond_16

    sget-object v5, Lh;->a:Lh;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    :goto_0
    invoke-static/range {p2 .. p3}, Ldg;->b([II)I

    move-result v7

    const/4 v5, 0x4

    move/from16 v0, p3

    move v1, v5

    if-ge v0, v1, :cond_0

    packed-switch p3, :pswitch_data_0

    :cond_0
    move/from16 v0, p3

    new-array v0, v0, [I

    move-object v5, v0

    const/4 v8, 0x0

    :goto_1
    move v0, v8

    move/from16 v1, p3

    if-ge v0, v1, :cond_5

    aget v9, p2, v8

    aput v9, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :pswitch_0
    new-instance v5, Lv;

    const/4 v8, 0x0

    aget v8, p2, v8

    invoke-direct {v5, v6, v7, v8}, Lv;-><init>(Ljava/lang/String;II)V

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ldg;->k:Z

    move v6, v0

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->e:[I

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->e:[I

    move-object v8, v0

    array-length v8, v8

    new-array v9, v8, [I

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Ldg;->e:[I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->e:[I

    move-object v10, v0

    const/4 v11, 0x0

    invoke-static {v6, v9, v10, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ldg;->k:Z

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ldg;->j:Z

    move v6, v0

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ldg;->j:Z

    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ldg;->l:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->e:[I

    move-object v6, v0

    array-length v6, v6

    add-int v8, v6, v6

    const/high16 v9, 0x10000

    if-le v8, v9, :cond_6

    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Ldg;->c:I

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->e:[I

    move-object v6, v0

    const/4 v8, 0x0

    invoke-static {v6, v8}, Ljava/util/Arrays;->fill([II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->f:[Lcj;

    move-object v6, v0

    const/4 v8, 0x0

    invoke-static {v6, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->g:[Lag;

    move-object v6, v0

    const/4 v8, 0x0

    invoke-static {v6, v8}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Ldg;->h:I

    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Ldg;->i:I

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Ldg;->c:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Ldg;->c:I

    move-object/from16 v0, p0

    iget v0, v0, Ldg;->d:I

    move v6, v0

    and-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->f:[Lcj;

    move-object v8, v0

    aget-object v8, v8, v6

    if-nez v8, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->e:[I

    move-object v8, v0

    shl-int/lit8 v7, v7, 0x8

    aput v7, v8, v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Ldg;->l:Z

    move v7, v0

    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->f:[Lcj;

    move-object v7, v0

    array-length v8, v7

    new-array v9, v8, [Lcj;

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Ldg;->f:[Lcj;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->f:[Lcj;

    move-object v10, v0

    const/4 v11, 0x0

    invoke-static {v7, v9, v10, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ldg;->l:Z

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->f:[Lcj;

    move-object v7, v0

    aput-object v5, v7, v6

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->e:[I

    move-object v6, v0

    array-length v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Ldg;->c:I

    move v7, v0

    shr-int/lit8 v8, v6, 0x1

    if-le v7, v8, :cond_4

    shr-int/lit8 v7, v6, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Ldg;->c:I

    move v8, v0

    sub-int/2addr v6, v7

    if-le v8, v6, :cond_15

    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ldg;->j:Z

    :cond_4
    :goto_4
    return-object v5

    :pswitch_1
    new-instance v5, Lw;

    const/4 v8, 0x0

    aget v8, p2, v8

    const/4 v9, 0x1

    aget v9, p2, v9

    invoke-direct {v5, v6, v7, v8, v9}, Lw;-><init>(Ljava/lang/String;III)V

    goto/16 :goto_2

    :pswitch_2
    new-instance v5, Lx;

    const/4 v8, 0x0

    aget v8, p2, v8

    const/4 v9, 0x1

    aget v9, p2, v9

    const/4 v10, 0x2

    aget v10, p2, v10

    invoke-direct/range {v5 .. v10}, Lx;-><init>(Ljava/lang/String;IIII)V

    goto/16 :goto_2

    :cond_5
    new-instance v8, Ls;

    move-object v0, v8

    move-object v1, v6

    move v2, v7

    move-object v3, v5

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Ls;-><init>(Ljava/lang/String;I[II)V

    move-object v5, v8

    goto/16 :goto_2

    :cond_6
    new-array v9, v8, [I

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Ldg;->e:[I

    const/4 v9, 0x1

    sub-int v9, v8, v9

    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Ldg;->d:I

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->f:[Lcj;

    move-object v9, v0

    new-array v8, v8, [Lcj;

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Ldg;->f:[Lcj;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move/from16 v18, v10

    move v10, v8

    move/from16 v8, v18

    :goto_5
    if-ge v8, v6, :cond_8

    aget-object v11, v9, v8

    if-eqz v11, :cond_7

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v11}, Lcj;->hashCode()I

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Ldg;->d:I

    move v13, v0

    and-int/2addr v13, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->f:[Lcj;

    move-object v14, v0

    aput-object v11, v14, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->e:[I

    move-object v11, v0

    shl-int/lit8 v12, v12, 0x8

    aput v12, v11, v13

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Ldg;->i:I

    move v6, v0

    if-eqz v6, :cond_2

    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Ldg;->h:I

    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Ldg;->i:I

    const/4 v8, 0x0

    move v0, v8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ldg;->m:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->g:[Lag;

    move-object v8, v0

    array-length v9, v8

    new-array v9, v9, [Lag;

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Ldg;->g:[Lag;

    const/4 v9, 0x0

    :goto_6
    if-ge v9, v6, :cond_e

    aget-object v11, v8, v9

    move-object/from16 v18, v11

    move v11, v10

    move-object/from16 v10, v18

    :goto_7
    if-eqz v10, :cond_d

    add-int/lit8 v11, v11, 0x1

    iget-object v12, v10, Lag;->a:Lcj;

    invoke-virtual {v12}, Lcj;->hashCode()I

    move-result v13

    move-object/from16 v0, p0

    iget v0, v0, Ldg;->d:I

    move v14, v0

    and-int/2addr v14, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->e:[I

    move-object v15, v0

    aget v15, v15, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->f:[Lcj;

    move-object/from16 v16, v0

    aget-object v16, v16, v14

    if-nez v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->e:[I

    move-object v15, v0

    shl-int/lit8 v13, v13, 0x8

    aput v13, v15, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->f:[Lcj;

    move-object v13, v0

    aput-object v12, v13, v14

    :goto_8
    iget-object v10, v10, Lag;->b:Lag;

    goto :goto_7

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Ldg;->h:I

    move v13, v0

    add-int/lit8 v13, v13, 0x1

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Ldg;->h:I

    and-int/lit16 v13, v15, 0xff

    if-nez v13, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Ldg;->i:I

    move v13, v0

    const/16 v16, 0xfe

    move v0, v13

    move/from16 v1, v16

    if-gt v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Ldg;->i:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Ldg;->i:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Ldg;->i:I

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->g:[Lag;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move v0, v13

    move/from16 v1, v16

    if-lt v0, v1, :cond_a

    invoke-direct/range {p0 .. p0}, Ldg;->e()V

    :cond_a
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->e:[I

    move-object/from16 v16, v0

    and-int/lit16 v15, v15, -0x100

    add-int/lit8 v17, v13, 0x1

    or-int v15, v15, v17

    aput v15, v16, v14

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->g:[Lag;

    move-object v14, v0

    new-instance v15, Lag;

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->g:[Lag;

    move-object/from16 v16, v0

    aget-object v16, v16, v13

    move-object v0, v15

    move-object v1, v12

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lag;-><init>(Lcj;Lag;)V

    aput-object v15, v14, v13

    goto :goto_8

    :cond_b
    invoke-direct/range {p0 .. p0}, Ldg;->d()I

    move-result v13

    goto :goto_9

    :cond_c
    add-int/lit8 v13, v13, -0x1

    goto :goto_a

    :cond_d
    add-int/lit8 v9, v9, 0x1

    move v10, v11

    goto/16 :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Ldg;->c:I

    move v6, v0

    if-eq v10, v6, :cond_2

    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Internal error: count after rehash "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; should be "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Ldg;->c:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ldg;->m:Z

    move v7, v0

    if-eqz v7, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->g:[Lag;

    move-object v7, v0

    if-nez v7, :cond_12

    const/16 v7, 0x20

    new-array v7, v7, [Lag;

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Ldg;->g:[Lag;

    :goto_b
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ldg;->m:Z

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Ldg;->h:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Ldg;->h:I

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->e:[I

    move-object v7, v0

    aget v7, v7, v6

    and-int/lit16 v8, v7, 0xff

    if-nez v8, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Ldg;->i:I

    move v8, v0

    const/16 v9, 0xfe

    if-gt v8, v9, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Ldg;->i:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Ldg;->i:I

    move v9, v0

    add-int/lit8 v9, v9, 0x1

    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Ldg;->i:I

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->g:[Lag;

    move-object v9, v0

    array-length v9, v9

    if-lt v8, v9, :cond_11

    invoke-direct/range {p0 .. p0}, Ldg;->e()V

    :cond_11
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->e:[I

    move-object v9, v0

    and-int/lit16 v7, v7, -0x100

    add-int/lit8 v10, v8, 0x1

    or-int/2addr v7, v10

    aput v7, v9, v6

    move v6, v8

    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->g:[Lag;

    move-object v7, v0

    new-instance v8, Lag;

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->g:[Lag;

    move-object v9, v0

    aget-object v9, v9, v6

    invoke-direct {v8, v5, v9}, Lag;-><init>(Lcj;Lag;)V

    aput-object v8, v7, v6

    goto/16 :goto_3

    :cond_12
    array-length v8, v7

    new-array v9, v8, [Lag;

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Ldg;->g:[Lag;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ldg;->g:[Lag;

    move-object v10, v0

    const/4 v11, 0x0

    invoke-static {v7, v9, v10, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    :cond_13
    invoke-direct/range {p0 .. p0}, Ldg;->d()I

    move-result v8

    goto :goto_c

    :cond_14
    add-int/lit8 v6, v8, -0x1

    goto :goto_d

    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Ldg;->h:I

    move v6, v0

    if-lt v6, v7, :cond_4

    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ldg;->j:Z

    goto/16 :goto_4

    :cond_16
    move-object/from16 v6, p1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a([II)Lcj;
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ldg;->b([II)I

    move-result v0

    iget v1, p0, Ldg;->d:I

    and-int/2addr v1, v0

    iget-object v2, p0, Ldg;->e:[I

    aget v2, v2, v1

    shr-int/lit8 v3, v2, 0x8

    xor-int/2addr v3, v0

    shl-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_1

    iget-object v3, p0, Ldg;->f:[Lcj;

    aget-object v1, v3, v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcj;->a([II)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    if-nez v2, :cond_2

    move-object v0, v4

    goto :goto_0

    :cond_2
    and-int/lit16 v1, v2, 0xff

    if-lez v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Ldg;->g:[Lag;

    aget-object v1, v2, v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0, p1, p2}, Lag;->a(I[II)Lcj;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v4

    goto :goto_0
.end method

.method public final declared-synchronized a(ZZ)Ldg;
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Ldg;

    invoke-direct {v0, p0, p2}, Ldg;-><init>(Ldg;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Ldg;->k:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, p0, Ldg;->a:Ldg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldg;->a:Ldg;

    invoke-direct {v0, p0}, Ldg;->a(Ldg;)V

    iput-boolean v1, p0, Ldg;->k:Z

    iput-boolean v1, p0, Ldg;->l:Z

    iput-boolean v1, p0, Ldg;->m:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
