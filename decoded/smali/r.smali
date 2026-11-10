.class public final Lr;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ly;

.field private c:Z

.field private d:Lbx;

.field private e:[B

.field private f:[B

.field private g:[C

.field private h:[C

.field private i:[C


# direct methods
.method public constructor <init>(Lbx;Ljava/lang/Object;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lr;->e:[B

    iput-object v0, p0, Lr;->f:[B

    iput-object v0, p0, Lr;->g:[C

    iput-object v0, p0, Lr;->h:[C

    iput-object v0, p0, Lr;->i:[C

    iput-object p1, p0, Lr;->d:Lbx;

    iput-object p2, p0, Lr;->a:Ljava/lang/Object;

    iput-boolean p3, p0, Lr;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Ly;)V
    .locals 0

    iput-object p1, p0, Lr;->b:Ly;

    return-void
.end method

.method public final a([B)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lr;->e:[B

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lr;->e:[B

    iget-object v0, p0, Lr;->d:Lbx;

    sget-object v1, Lap;->a:Lap;

    invoke-virtual {v0, v1, p1}, Lbx;->a(Lap;[B)V

    :cond_1
    return-void
.end method

.method public final a([C)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lr;->g:[C

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lr;->g:[C

    iget-object v0, p0, Lr;->d:Lbx;

    sget-object v1, Ldc;->a:Ldc;

    invoke-virtual {v0, v1, p1}, Lbx;->a(Ldc;[C)V

    :cond_1
    return-void
.end method

.method public final b()Ly;
    .locals 1

    iget-object v0, p0, Lr;->b:Ly;

    return-object v0
.end method

.method public final b([C)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lr;->h:[C

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lr;->h:[C

    iget-object v0, p0, Lr;->d:Lbx;

    sget-object v1, Ldc;->b:Ldc;

    invoke-virtual {v0, v1, p1}, Lbx;->a(Ldc;[C)V

    :cond_1
    return-void
.end method

.method public final c([C)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lr;->i:[C

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lr;->i:[C

    iget-object v0, p0, Lr;->d:Lbx;

    sget-object v1, Ldc;->d:Ldc;

    invoke-virtual {v0, v1, p1}, Lbx;->a(Ldc;[C)V

    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lr;->c:Z

    return v0
.end method

.method public final d()Lcb;
    .locals 2

    new-instance v0, Lcb;

    iget-object v1, p0, Lr;->d:Lbx;

    invoke-direct {v0, v1}, Lcb;-><init>(Lbx;)V

    return-object v0
.end method

.method public final e()[C
    .locals 2

    iget-object v0, p0, Lr;->g:[C

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocTokenBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lr;->d:Lbx;

    sget-object v1, Ldc;->a:Ldc;

    invoke-virtual {v0, v1}, Lbx;->a(Ldc;)[C

    move-result-object v0

    iput-object v0, p0, Lr;->g:[C

    iget-object v0, p0, Lr;->g:[C

    return-object v0
.end method

.method public final f()[C
    .locals 2

    iget-object v0, p0, Lr;->h:[C

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocConcatBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lr;->d:Lbx;

    sget-object v1, Ldc;->b:Ldc;

    invoke-virtual {v0, v1}, Lbx;->a(Ldc;)[C

    move-result-object v0

    iput-object v0, p0, Lr;->h:[C

    iget-object v0, p0, Lr;->h:[C

    return-object v0
.end method
