.class public final Lcl;
.super Lbz;


# instance fields
.field private c:Lcl;

.field private d:Ljava/lang/String;

.field private e:Lcl;


# direct methods
.method private constructor <init>(ILcl;)V
    .locals 1

    invoke-direct {p0}, Lbz;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcl;->e:Lcl;

    iput p1, p0, Lcl;->a:I

    iput-object p2, p0, Lcl;->c:Lcl;

    const/4 v0, -0x1

    iput v0, p0, Lcl;->b:I

    return-void
.end method

.method private final a(I)Lcl;
    .locals 1

    iput p1, p0, Lcl;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcl;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcl;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static f()Lcl;
    .locals 3

    new-instance v0, Lcl;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcl;-><init>(ILcl;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x4

    iget v0, p0, Lcl;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcl;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcl;->d:Ljava/lang/String;

    iget v0, p0, Lcl;->b:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final g()Lcl;
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcl;->e:Lcl;

    if-nez v0, :cond_0

    new-instance v0, Lcl;

    invoke-direct {v0, v1, p0}, Lcl;-><init>(ILcl;)V

    iput-object v0, p0, Lcl;->e:Lcl;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {v0, v1}, Lcl;->a(I)Lcl;

    move-result-object v0

    goto :goto_0
.end method

.method public final h()Lcl;
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lcl;->e:Lcl;

    if-nez v0, :cond_0

    new-instance v0, Lcl;

    invoke-direct {v0, v1, p0}, Lcl;-><init>(ILcl;)V

    iput-object v0, p0, Lcl;->e:Lcl;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {v0, v1}, Lcl;->a(I)Lcl;

    move-result-object v0

    goto :goto_0
.end method

.method public final i()Lcl;
    .locals 1

    iget-object v0, p0, Lcl;->c:Lcl;

    return-object v0
.end method

.method public final j()I
    .locals 4

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcl;->a:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcl;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcl;->d:Ljava/lang/String;

    iget v0, p0, Lcl;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcl;->b:I

    move v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcl;->a:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcl;->b:I

    iget v1, p0, Lcl;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcl;->b:I

    if-gez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    iget v0, p0, Lcl;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcl;->b:I

    iget v0, p0, Lcl;->b:I

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const/16 v4, 0x5d

    const/16 v3, 0x22

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lcl;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcl;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcl;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget v1, p0, Lcl;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcl;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
