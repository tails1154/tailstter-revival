.class public final Ldd;
.super Lbz;


# instance fields
.field private c:Ldd;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ldd;


# direct methods
.method public constructor <init>(Ldd;III)V
    .locals 1

    invoke-direct {p0}, Lbz;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldd;->g:Ldd;

    iput p2, p0, Ldd;->a:I

    iput-object p1, p0, Ldd;->c:Ldd;

    iput p3, p0, Ldd;->d:I

    iput p4, p0, Ldd;->e:I

    const/4 v0, -0x1

    iput v0, p0, Ldd;->b:I

    return-void
.end method

.method private a(III)V
    .locals 1

    iput p1, p0, Ldd;->a:I

    const/4 v0, -0x1

    iput v0, p0, Ldd;->b:I

    iput p2, p0, Ldd;->d:I

    iput p3, p0, Ldd;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Ldd;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lay;
    .locals 6

    new-instance v0, Lay;

    const-wide/16 v2, -0x1

    iget v4, p0, Ldd;->d:I

    iget v5, p0, Ldd;->e:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lay;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method public final a(II)Ldd;
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Ldd;->g:Ldd;

    if-nez v0, :cond_0

    new-instance v0, Ldd;

    invoke-direct {v0, p0, v1, p1, p2}, Ldd;-><init>(Ldd;III)V

    iput-object v0, p0, Ldd;->g:Ldd;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {v0, v1, p1, p2}, Ldd;->a(III)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldd;->f:Ljava/lang/String;

    return-void
.end method

.method public final b(II)Ldd;
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Ldd;->g:Ldd;

    if-nez v0, :cond_0

    new-instance v0, Ldd;

    invoke-direct {v0, p0, v1, p1, p2}, Ldd;-><init>(Ldd;III)V

    iput-object v0, p0, Ldd;->g:Ldd;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {v0, v1, p1, p2}, Ldd;->a(III)V

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldd;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ldd;
    .locals 1

    iget-object v0, p0, Ldd;->c:Ldd;

    return-object v0
.end method

.method public final h()Z
    .locals 2

    iget v0, p0, Ldd;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ldd;->b:I

    iget v1, p0, Ldd;->a:I

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0x5d

    const/16 v2, 0x22

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Ldd;->a:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldd;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldd;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldd;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Le;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
