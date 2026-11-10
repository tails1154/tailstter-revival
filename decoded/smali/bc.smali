.class public abstract Lbc;
.super Lu;


# instance fields
.field private a:Z

.field protected final b:Lr;

.field protected c:I

.field protected d:I

.field protected e:J

.field protected f:I

.field protected g:I

.field protected h:J

.field protected i:I

.field protected j:I

.field protected k:Ldd;

.field protected l:Lcg;

.field protected final m:Lcb;

.field protected n:Z

.field protected o:[B

.field private r:[C

.field private s:La;


# direct methods
.method protected constructor <init>(Lr;I)V
    .locals 5

    const-wide/16 v1, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lu;-><init>()V

    iput v3, p0, Lbc;->c:I

    iput v3, p0, Lbc;->d:I

    iput-wide v1, p0, Lbc;->e:J

    iput v0, p0, Lbc;->f:I

    iput v3, p0, Lbc;->g:I

    iput-wide v1, p0, Lbc;->h:J

    iput v0, p0, Lbc;->i:I

    iput v3, p0, Lbc;->j:I

    iput-object v4, p0, Lbc;->r:[C

    iput-boolean v3, p0, Lbc;->n:Z

    iput-object v4, p0, Lbc;->s:La;

    iput p2, p0, Lbc;->p:I

    iput-object p1, p0, Lbc;->b:Lr;

    invoke-virtual {p1}, Lr;->d()Lcb;

    move-result-object v0

    iput-object v0, p0, Lbc;->m:Lcb;

    iget v0, p0, Lbc;->i:I

    iget v1, p0, Lbc;->j:I

    new-instance v2, Ldd;

    invoke-direct {v2, v4, v3, v0, v1}, Ldd;-><init>(Ldd;III)V

    iput-object v2, p0, Lbc;->k:Ldd;

    return-void
.end method


# virtual methods
.method protected final a(IC)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbc;->k:Ldd;

    iget-object v2, p0, Lbc;->b:Lr;

    invoke-virtual {v2}, Lr;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldd;->a(Ljava/lang/Object;)Lay;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected close marker \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\': expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbc;->k:Ldd;

    invoke-virtual {v2}, Ldd;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " starting at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbc;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract a()Z
.end method

.method protected abstract b()V
.end method

.method protected c()V
    .locals 2

    iget-object v0, p0, Lbc;->m:Lcb;

    invoke-virtual {v0}, Lcb;->a()V

    iget-object v0, p0, Lbc;->r:[C

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lbc;->r:[C

    iget-object v1, p0, Lbc;->b:Lr;

    invoke-virtual {v1, v0}, Lr;->c([C)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lbc;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbc;->a:Z

    :try_start_0
    invoke-virtual {p0}, Lbc;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lbc;->c()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lbc;->c()V

    throw v0
.end method

.method protected final i()V
    .locals 3

    iget-object v0, p0, Lbc;->k:Ldd;

    invoke-virtual {v0}, Ldd;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": expected close marker for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbc;->k:Ldd;

    invoke-virtual {v1}, Ldd;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbc;->k:Ldd;

    iget-object v2, p0, Lbc;->b:Lr;

    invoke-virtual {v2}, Lr;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldd;->a(Ljava/lang/Object;)Lay;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbc;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lbc;->q:Lcg;

    sget-object v1, Lcg;->a:Lcg;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lbc;->q:Lcg;

    sget-object v1, Lcg;->c:Lcg;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lbc;->k:Ldd;

    invoke-virtual {v0}, Ldd;->g()Ldd;

    move-result-object v0

    invoke-virtual {v0}, Ldd;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lbc;->k:Ldd;

    invoke-virtual {v0}, Ldd;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final n()Lay;
    .locals 8

    iget v0, p0, Lbc;->c:I

    iget v1, p0, Lbc;->g:I

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, 0x1

    new-instance v0, Lay;

    iget-object v1, p0, Lbc;->b:Lr;

    invoke-virtual {v1}, Lr;->a()Ljava/lang/Object;

    move-result-object v1

    iget-wide v2, p0, Lbc;->e:J

    iget v4, p0, Lbc;->c:I

    int-to-long v6, v4

    add-long/2addr v2, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v2, v6

    iget v4, p0, Lbc;->f:I

    invoke-direct/range {v0 .. v5}, Lay;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method protected final o()V
    .locals 1

    invoke-virtual {p0}, Lbc;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbc;->k()V

    :cond_0
    return-void
.end method
