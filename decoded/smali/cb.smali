.class public final Lcb;
.super Ljava/lang/Object;


# static fields
.field private static a:[C


# instance fields
.field private final b:Lbx;

.field private c:[C

.field private d:I

.field private e:I

.field private f:Ljava/util/ArrayList;

.field private g:Z

.field private h:I

.field private i:[C

.field private j:I

.field private k:Ljava/lang/String;

.field private l:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lcb;->a:[C

    return-void
.end method

.method public constructor <init>(Lbx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcb;->g:Z

    iput-object p1, p0, Lcb;->b:Lbx;

    return-void
.end method

.method private final b(I)[C
    .locals 2

    iget-object v0, p0, Lcb;->b:Lbx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcb;->b:Lbx;

    sget-object v1, Ldc;->c:Ldc;

    invoke-virtual {v0, v1, p1}, Lbx;->a(Ldc;I)[C

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    goto :goto_0
.end method

.method private c(I)V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lcb;->e:I

    iput v5, p0, Lcb;->e:I

    iget-object v1, p0, Lcb;->c:[C

    const/4 v2, 0x0

    iput-object v2, p0, Lcb;->c:[C

    iget v2, p0, Lcb;->d:I

    const/4 v3, -0x1

    iput v3, p0, Lcb;->d:I

    add-int v3, v0, p1

    iget-object v4, p0, Lcb;->i:[C

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcb;->i:[C

    array-length v4, v4

    if-le v3, v4, :cond_1

    :cond_0
    invoke-direct {p0, v3}, Lcb;->b(I)[C

    move-result-object v3

    iput-object v3, p0, Lcb;->i:[C

    :cond_1
    if-lez v0, :cond_2

    iget-object v3, p0, Lcb;->i:[C

    invoke-static {v1, v2, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iput v5, p0, Lcb;->h:I

    iput v0, p0, Lcb;->j:I

    return-void
.end method

.method private d(I)V
    .locals 3

    iget-object v0, p0, Lcb;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcb;->f:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcb;->i:[C

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcb;->g:Z

    iget-object v1, p0, Lcb;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcb;->h:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcb;->h:I

    array-length v0, v0

    shr-int/lit8 v1, v0, 0x1

    if-ge v1, p1, :cond_1

    move v1, p1

    :cond_1
    const/high16 v2, 0x40000

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [C

    const/4 v1, 0x0

    iput v1, p0, Lcb;->j:I

    iput-object v0, p0, Lcb;->i:[C

    return-void
.end method

.method private m()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcb;->d:I

    iput v2, p0, Lcb;->j:I

    iput v2, p0, Lcb;->e:I

    iput-object v1, p0, Lcb;->c:[C

    iput-object v1, p0, Lcb;->k:Ljava/lang/String;

    iput-object v1, p0, Lcb;->l:[C

    iget-boolean v0, p0, Lcb;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcb;->n()V

    :cond_0
    return-void
.end method

.method private final n()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcb;->g:Z

    iget-object v0, p0, Lcb;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lcb;->h:I

    iput v1, p0, Lcb;->j:I

    return-void
.end method

.method private o()[C
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcb;->l:[C

    if-nez v0, :cond_0

    iget-object v0, p0, Lcb;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcb;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcb;->l:[C

    :cond_0
    return-object v0

    :cond_1
    iget v0, p0, Lcb;->d:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcb;->e:I

    if-gtz v0, :cond_2

    sget-object v0, Lcb;->a:[C

    goto :goto_0

    :cond_2
    iget v0, p0, Lcb;->e:I

    new-array v0, v0, [C

    iget-object v1, p0, Lcb;->c:[C

    iget v2, p0, Lcb;->d:I

    iget v3, p0, Lcb;->e:I

    invoke-static {v1, v2, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcb;->b()I

    move-result v0

    if-gtz v0, :cond_4

    sget-object v0, Lcb;->a:[C

    goto :goto_0

    :cond_4
    new-array v1, v0, [C

    iget-object v0, p0, Lcb;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcb;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v6

    move v4, v6

    :goto_1
    if-ge v3, v2, :cond_5

    iget-object v0, p0, Lcb;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    array-length v5, v0

    invoke-static {v0, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v4, v5

    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_1

    :cond_5
    move v0, v4

    :goto_2
    iget-object v2, p0, Lcb;->i:[C

    iget v3, p0, Lcb;->j:I

    invoke-static {v2, v6, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    goto :goto_0

    :cond_6
    move v0, v6

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcb;->b:Lbx;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcb;->m()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcb;->i:[C

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcb;->m()V

    iget-object v0, p0, Lcb;->i:[C

    const/4 v1, 0x0

    iput-object v1, p0, Lcb;->i:[C

    iget-object v1, p0, Lcb;->b:Lbx;

    sget-object v2, Ldc;->c:Ldc;

    invoke-virtual {v1, v2, v0}, Lbx;->a(Ldc;[C)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcb;->j:I

    return-void
.end method

.method public final a([CII)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcb;->k:Ljava/lang/String;

    iput-object v0, p0, Lcb;->l:[C

    iput-object p1, p0, Lcb;->c:[C

    iput p2, p0, Lcb;->d:I

    iput p3, p0, Lcb;->e:I

    iget-boolean v0, p0, Lcb;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcb;->n()V

    :cond_0
    return-void
.end method

.method public final b()I
    .locals 2

    iget v0, p0, Lcb;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcb;->e:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcb;->h:I

    iget v1, p0, Lcb;->j:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public final b([CII)V
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lcb;->c:[C

    const/4 v0, -0x1

    iput v0, p0, Lcb;->d:I

    iput v3, p0, Lcb;->e:I

    iput-object v1, p0, Lcb;->k:Ljava/lang/String;

    iput-object v1, p0, Lcb;->l:[C

    iget-boolean v0, p0, Lcb;->g:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcb;->n()V

    :cond_0
    :goto_0
    iput v3, p0, Lcb;->h:I

    iput v3, p0, Lcb;->j:I

    iget v0, p0, Lcb;->d:I

    if-ltz v0, :cond_1

    invoke-direct {p0, p3}, Lcb;->c(I)V

    :cond_1
    iput-object v1, p0, Lcb;->k:Ljava/lang/String;

    iput-object v1, p0, Lcb;->l:[C

    iget-object v0, p0, Lcb;->i:[C

    array-length v1, v0

    iget v2, p0, Lcb;->j:I

    sub-int/2addr v1, v2

    if-lt v1, p3, :cond_3

    iget v1, p0, Lcb;->j:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcb;->j:I

    add-int/2addr v0, p3

    iput v0, p0, Lcb;->j:I

    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcb;->i:[C

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lcb;->b(I)[C

    move-result-object v0

    iput-object v0, p0, Lcb;->i:[C

    goto :goto_0

    :cond_3
    if-lez v1, :cond_4

    iget v2, p0, Lcb;->j:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, p2, v1

    sub-int v1, p3, v1

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_2
    invoke-direct {p0, v0}, Lcb;->d(I)V

    iget-object v2, p0, Lcb;->i:[C

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcb;->j:I

    goto :goto_1

    :cond_4
    move v0, p3

    move v1, p2

    goto :goto_2
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcb;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcb;->d:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()[C
    .locals 1

    iget v0, p0, Lcb;->d:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcb;->c:[C

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcb;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcb;->i:[C

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcb;->o()[C

    move-result-object v0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcb;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcb;->l:[C

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcb;->l:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lcb;->k:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcb;->k:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_1
    iget v0, p0, Lcb;->d:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcb;->e:I

    if-gtz v0, :cond_2

    const-string v0, ""

    iput-object v0, p0, Lcb;->k:Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcb;->c:[C

    iget v2, p0, Lcb;->d:I

    iget v3, p0, Lcb;->e:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcb;->k:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget v0, p0, Lcb;->h:I

    iget v1, p0, Lcb;->j:I

    if-nez v0, :cond_5

    if-nez v1, :cond_4

    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lcb;->k:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcb;->i:[C

    invoke-direct {v0, v2, v5, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_2

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p0, Lcb;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcb;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v5

    :goto_3
    if-ge v3, v1, :cond_6

    iget-object v0, p0, Lcb;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    array-length v4, v0

    invoke-virtual {v2, v0, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcb;->i:[C

    iget v1, p0, Lcb;->j:I

    invoke-virtual {v2, v0, v5, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcb;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public final f()Ljava/math/BigDecimal;
    .locals 4

    iget-object v0, p0, Lcb;->l:[C

    if-eqz v0, :cond_0

    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcb;->l:[C

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcb;->d:I

    if-ltz v0, :cond_1

    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcb;->c:[C

    iget v2, p0, Lcb;->d:I

    iget v3, p0, Lcb;->e:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcb;->h:I

    if-nez v0, :cond_2

    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcb;->i:[C

    const/4 v2, 0x0

    iget v3, p0, Lcb;->j:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Lcb;->o()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    goto :goto_0
.end method

.method public final g()D
    .locals 2

    invoke-virtual {p0}, Lcb;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final h()[C
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcb;->d:I

    if-ltz v0, :cond_1

    invoke-direct {p0, v2}, Lcb;->c(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcb;->i:[C

    return-object v0

    :cond_1
    iget-object v0, p0, Lcb;->i:[C

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcb;->b(I)[C

    move-result-object v0

    iput-object v0, p0, Lcb;->i:[C

    goto :goto_0

    :cond_2
    iget v1, p0, Lcb;->j:I

    array-length v0, v0

    if-lt v1, v0, :cond_0

    invoke-direct {p0, v2}, Lcb;->d(I)V

    goto :goto_0
.end method

.method public final i()[C
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcb;->d:I

    iput v1, p0, Lcb;->j:I

    iput v1, p0, Lcb;->e:I

    iput-object v2, p0, Lcb;->c:[C

    iput-object v2, p0, Lcb;->k:Ljava/lang/String;

    iput-object v2, p0, Lcb;->l:[C

    iget-boolean v0, p0, Lcb;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcb;->n()V

    :cond_0
    iget-object v0, p0, Lcb;->i:[C

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lcb;->b(I)[C

    move-result-object v0

    iput-object v0, p0, Lcb;->i:[C

    :cond_1
    return-object v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcb;->j:I

    return v0
.end method

.method public final k()[C
    .locals 2

    iget-object v0, p0, Lcb;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcb;->f:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcb;->g:Z

    iget-object v0, p0, Lcb;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcb;->i:[C

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcb;->i:[C

    array-length v0, v0

    iget v1, p0, Lcb;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lcb;->h:I

    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [C

    const/4 v1, 0x0

    iput v1, p0, Lcb;->j:I

    iput-object v0, p0, Lcb;->i:[C

    return-object v0
.end method

.method public final l()[C
    .locals 5

    const/high16 v4, 0x40000

    const/4 v3, 0x0

    iget-object v0, p0, Lcb;->i:[C

    array-length v1, v0

    if-ne v1, v4, :cond_0

    const v2, 0x40001

    :goto_0
    new-array v2, v2, [C

    iput-object v2, p0, Lcb;->i:[C

    iget-object v2, p0, Lcb;->i:[C

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcb;->i:[C

    return-object v0

    :cond_0
    shr-int/lit8 v2, v1, 0x1

    add-int/2addr v2, v1

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcb;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
