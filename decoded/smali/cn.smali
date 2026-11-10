.class public final Lcn;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcn;


# instance fields
.field private b:Lcn;

.field private c:Z

.field private d:Z

.field private e:[Ljava/lang/String;

.field private f:[Ldm;

.field private g:I

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn;

    invoke-direct {v0}, Lcn;-><init>()V

    sput-object v0, Lcn;->a:Lcn;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcn;->d:Z

    iput-boolean v0, p0, Lcn;->c:Z

    iput-boolean v0, p0, Lcn;->j:Z

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcn;->a(I)V

    return-void
.end method

.method private constructor <init>(Lcn;ZZ[Ljava/lang/String;[Ldm;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn;->b:Lcn;

    iput-boolean p2, p0, Lcn;->d:Z

    iput-boolean p3, p0, Lcn;->c:Z

    iput-object p4, p0, Lcn;->e:[Ljava/lang/String;

    iput-object p5, p0, Lcn;->f:[Ldm;

    iput p6, p0, Lcn;->g:I

    array-length v0, p4

    shr-int/lit8 v1, v0, 0x2

    sub-int v1, v0, v1

    iput v1, p0, Lcn;->h:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcn;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn;->j:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static a([CII)I
    .locals 4

    const/4 v0, 0x0

    aget-char v0, p0, v0

    const/4 v1, 0x1

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_0
    if-ge v0, p2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    aget-char v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static a()Lcn;
    .locals 7

    const/4 v2, 0x1

    sget-object v3, Lcn;->a:Lcn;

    new-instance v0, Lcn;

    const/4 v1, 0x0

    iget-object v4, v3, Lcn;->e:[Ljava/lang/String;

    iget-object v5, v3, Lcn;->f:[Ldm;

    iget v6, v3, Lcn;->g:I

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcn;-><init>(Lcn;ZZ[Ljava/lang/String;[Ldm;I)V

    return-object v0
.end method

.method private a(I)V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcn;->e:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [Ldm;

    iput-object v0, p0, Lcn;->f:[Ldm;

    const/16 v0, 0x3f

    iput v0, p0, Lcn;->i:I

    const/4 v0, 0x0

    iput v0, p0, Lcn;->g:I

    const/16 v0, 0x30

    iput v0, p0, Lcn;->h:I

    return-void
.end method

.method private declared-synchronized a(Lcn;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcn;->g:I

    const/16 v1, 0x2ee0

    if-le v0, v1, :cond_1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lcn;->a(I)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v0, p1, Lcn;->g:I

    iget v1, p0, Lcn;->g:I

    if-le v0, v1, :cond_0

    iget-object v0, p1, Lcn;->e:[Ljava/lang/String;

    iput-object v0, p0, Lcn;->e:[Ljava/lang/String;

    iget-object v0, p1, Lcn;->f:[Ldm;

    iput-object v0, p0, Lcn;->f:[Ldm;

    iget v0, p1, Lcn;->g:I

    iput v0, p0, Lcn;->g:I

    iget v0, p1, Lcn;->h:I

    iput v0, p0, Lcn;->h:I

    iget v0, p1, Lcn;->i:I

    iput v0, p0, Lcn;->i:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()V
    .locals 12

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcn;->e:[Ljava/lang/String;

    array-length v0, v0

    add-int v1, v0, v0

    const/high16 v2, 0x10000

    if-le v1, v2, :cond_1

    iput v10, p0, Lcn;->g:I

    iget-object v0, p0, Lcn;->e:[Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcn;->f:[Ldm;

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iput-boolean v5, p0, Lcn;->j:Z

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcn;->e:[Ljava/lang/String;

    iget-object v3, p0, Lcn;->f:[Ldm;

    new-array v4, v1, [Ljava/lang/String;

    iput-object v4, p0, Lcn;->e:[Ljava/lang/String;

    shr-int/lit8 v4, v1, 0x1

    new-array v4, v4, [Ldm;

    iput-object v4, p0, Lcn;->f:[Ldm;

    sub-int/2addr v1, v5

    iput v1, p0, Lcn;->i:I

    iget v1, p0, Lcn;->h:I

    iget v4, p0, Lcn;->h:I

    add-int/2addr v1, v4

    iput v1, p0, Lcn;->h:I

    move v1, v10

    move v4, v10

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v5, v2, v1

    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcn;->a(Ljava/lang/String;)I

    move-result v6

    iget v7, p0, Lcn;->i:I

    and-int/2addr v6, v7

    iget-object v7, p0, Lcn;->e:[Ljava/lang/String;

    aget-object v7, v7, v6

    if-nez v7, :cond_3

    iget-object v7, p0, Lcn;->e:[Ljava/lang/String;

    aput-object v5, v7, v6

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    shr-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcn;->f:[Ldm;

    new-instance v8, Ldm;

    iget-object v9, p0, Lcn;->f:[Ldm;

    aget-object v9, v9, v6

    invoke-direct {v8, v5, v9}, Ldm;-><init>(Ljava/lang/String;Ldm;)V

    aput-object v8, v7, v6

    goto :goto_1

    :cond_4
    shr-int/lit8 v0, v0, 0x1

    move v1, v10

    move v2, v4

    :goto_2
    if-ge v1, v0, :cond_7

    aget-object v4, v3, v1

    move-object v11, v4

    move v4, v2

    move-object v2, v11

    :goto_3
    if-eqz v2, :cond_6

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2}, Ldm;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn;->a(Ljava/lang/String;)I

    move-result v6

    iget v7, p0, Lcn;->i:I

    and-int/2addr v6, v7

    iget-object v7, p0, Lcn;->e:[Ljava/lang/String;

    aget-object v7, v7, v6

    if-nez v7, :cond_5

    iget-object v7, p0, Lcn;->e:[Ljava/lang/String;

    aput-object v5, v7, v6

    :goto_4
    invoke-virtual {v2}, Ldm;->b()Ldm;

    move-result-object v2

    goto :goto_3

    :cond_5
    shr-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcn;->f:[Ldm;

    new-instance v8, Ldm;

    iget-object v9, p0, Lcn;->f:[Ldm;

    aget-object v9, v9, v6

    invoke-direct {v8, v5, v9}, Ldm;-><init>(Ljava/lang/String;Ldm;)V

    aput-object v8, v7, v6

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_2

    :cond_7
    iget v0, p0, Lcn;->g:I

    if-eq v2, v0, :cond_0

    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error on SymbolTable.rehash(): had "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcn;->g:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " entries; now have "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(ZZ)Lcn;
    .locals 7

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcn;

    iget-object v4, p0, Lcn;->e:[Ljava/lang/String;

    iget-object v5, p0, Lcn;->f:[Ldm;

    iget v6, p0, Lcn;->g:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcn;-><init>(Lcn;ZZ[Ljava/lang/String;[Ldm;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a([CIII)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    if-gtz p3, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcn;->d:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcn;->i:I

    and-int/2addr v0, p4

    iget-object v1, p0, Lcn;->e:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, p3, :cond_4

    move v2, v5

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int v4, p2, v2

    aget-char v4, p1, v4

    if-ne v3, v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    if-lt v2, p3, :cond_2

    :cond_3
    if-ne v2, p3, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcn;->f:[Ldm;

    shr-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1, p2, p3}, Ldm;->a([CII)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcn;->j:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcn;->e:[Ljava/lang/String;

    array-length v2, v1

    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p0, Lcn;->e:[Ljava/lang/String;

    iget-object v3, p0, Lcn;->e:[Ljava/lang/String;

    invoke-static {v1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcn;->f:[Ldm;

    array-length v2, v1

    new-array v3, v2, [Ldm;

    iput-object v3, p0, Lcn;->f:[Ldm;

    iget-object v3, p0, Lcn;->f:[Ldm;

    invoke-static {v1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn;->j:Z

    :cond_6
    :goto_1
    iget v1, p0, Lcn;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn;->g:I

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-boolean v2, p0, Lcn;->c:Z

    if-eqz v2, :cond_7

    sget-object v2, Lh;->a:Lh;

    invoke-virtual {v2, v1}, Lh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_7
    iget-object v2, p0, Lcn;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_9

    iget-object v2, p0, Lcn;->e:[Ljava/lang/String;

    aput-object v1, v2, v0

    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_8
    iget v1, p0, Lcn;->g:I

    iget v2, p0, Lcn;->h:I

    if-lt v1, v2, :cond_6

    invoke-direct {p0}, Lcn;->c()V

    invoke-static {p1, p2, p3}, Lcn;->a([CII)I

    move-result v0

    iget v1, p0, Lcn;->i:I

    and-int/2addr v0, v1

    goto :goto_1

    :cond_9
    shr-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcn;->f:[Ldm;

    new-instance v3, Ldm;

    iget-object v4, p0, Lcn;->f:[Ldm;

    aget-object v4, v4, v0

    invoke-direct {v3, v1, v4}, Ldm;-><init>(Ljava/lang/String;Ldm;)V

    aput-object v3, v2, v0

    goto :goto_2
.end method

.method public final b()V
    .locals 1

    iget-boolean v0, p0, Lcn;->j:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn;->b:Lcn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn;->b:Lcn;

    invoke-direct {v0, p0}, Lcn;->a(Lcn;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn;->j:Z

    goto :goto_0
.end method
