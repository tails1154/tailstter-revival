.class public final Lcom/twitter/android/client/n;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/twitter/android/client/d;

.field private final b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lab;

.field private f:Lac;

.field private g:Lak;

.field private h:Lbv;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    invoke-static {v0}, Lci;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/client/n;->b:Ljava/lang/String;

    sget-object v0, Lcom/twitter/android/client/d;->a:Lcom/twitter/android/client/d;

    iput-object v0, p0, Lcom/twitter/android/client/n;->a:Lcom/twitter/android/client/d;

    return-void
.end method


# virtual methods
.method public final a()Lcom/twitter/android/client/d;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/n;->a:Lcom/twitter/android/client/d;

    return-object v0
.end method

.method public final a(Lab;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/client/n;->e:Lab;

    return-void
.end method

.method public final a(Lac;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/client/n;->f:Lac;

    return-void
.end method

.method public final a(Lak;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/twitter/android/client/n;->g:Lak;

    :cond_0
    return-void
.end method

.method public final a(Lbv;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/twitter/android/client/n;->h:Lbv;

    :cond_0
    return-void
.end method

.method public final a(Lcom/twitter/android/client/d;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/client/n;->a:Lcom/twitter/android/client/d;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/client/n;->d:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/twitter/android/client/n;->c:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/client/n;->a:Lcom/twitter/android/client/d;

    sget-object v1, Lcom/twitter/android/client/d;->c:Lcom/twitter/android/client/d;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lac;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/n;->f:Lac;

    return-object v0
.end method

.method public final f()J
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/client/n;->f:Lac;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/n;->f:Lac;

    iget-wide v0, v0, Lac;->a:J

    goto :goto_0
.end method

.method public final g()Lab;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/n;->e:Lab;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/twitter/android/client/n;->c:Z

    return v0
.end method

.method public final i()Lbv;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/client/n;->h:Lbv;

    return-object v0
.end method
