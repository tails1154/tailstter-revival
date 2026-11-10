.class public abstract Lct;
.super Las;


# instance fields
.field protected b:Z

.field protected c:Lcl;

.field private d:Laj;

.field private e:I

.field private f:Z


# direct methods
.method protected constructor <init>(ILaj;)V
    .locals 1

    invoke-direct {p0}, Las;-><init>()V

    iput p1, p0, Lct;->e:I

    invoke-static {}, Lcl;->f()Lcl;

    move-result-object v0

    iput-object v0, p0, Lct;->c:Lcl;

    iput-object p2, p0, Lct;->d:Laj;

    sget-object v0, Lbw;->d:Lbw;

    invoke-virtual {p0, v0}, Lct;->a(Lbw;)Z

    move-result v0

    iput-boolean v0, p0, Lct;->b:Z

    return-void
.end method

.method protected static d(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lc;

    invoke-direct {v0, p0}, Lc;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lct;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lct;->c:Lcl;

    invoke-virtual {v0}, Lcl;->g()Lcl;

    move-result-object v0

    iput-object v0, p0, Lct;->c:Lcl;

    return-void
.end method

.method public final a(Lbw;)Z
    .locals 2

    iget v0, p0, Lct;->e:I

    invoke-virtual {p1}, Lbw;->b()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lct;->c:Lcl;

    invoke-virtual {v0}, Lcl;->a()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lct;->c:Lcl;

    invoke-virtual {v1}, Lcl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lct;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lct;->c:Lcl;

    invoke-virtual {v0}, Lcl;->i()Lcl;

    move-result-object v0

    iput-object v0, p0, Lct;->c:Lcl;

    return-void
.end method

.method public c()V
    .locals 1

    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lct;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lct;->c:Lcl;

    invoke-virtual {v0}, Lcl;->h()Lcl;

    move-result-object v0

    iput-object v0, p0, Lct;->c:Lcl;

    return-void
.end method

.method protected abstract c(Ljava/lang/String;)V
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lct;->f:Z

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lct;->c:Lcl;

    invoke-virtual {v0}, Lcl;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lct;->c:Lcl;

    invoke-virtual {v1}, Lcl;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lct;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lct;->c:Lcl;

    invoke-virtual {v0}, Lcl;->i()Lcl;

    move-result-object v0

    iput-object v0, p0, Lct;->c:Lcl;

    return-void
.end method

.method public final f()Lcl;
    .locals 1

    iget-object v0, p0, Lct;->c:Lcl;

    return-object v0
.end method
