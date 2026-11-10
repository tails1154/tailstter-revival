.class public abstract Lbl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected p:I

.field protected q:Lcg;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Laq;)Z
    .locals 2

    iget v0, p0, Lbl;->p:I

    invoke-virtual {p1}, Laq;->b()I

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

.method public abstract d()I
.end method

.method protected final d(Ljava/lang/String;)Lz;
    .locals 2

    new-instance v0, Lz;

    invoke-virtual {p0}, Lbl;->n()Lay;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lz;-><init>(Ljava/lang/String;Lay;)V

    return-object v0
.end method

.method public abstract e()J
.end method

.method public abstract f()D
.end method

.method public abstract g()Lcg;
.end method

.method public abstract h()Lbl;
.end method

.method public abstract j()Ljava/lang/String;
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public abstract n()Lay;
.end method

.method public final p()Lcg;
    .locals 1

    iget-object v0, p0, Lbl;->q:Lcg;

    return-object v0
.end method
