.class final Lag;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcj;

.field protected final b:Lag;


# direct methods
.method constructor <init>(Lcj;Lag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lag;->a:Lcj;

    iput-object p2, p0, Lag;->b:Lag;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lag;->b:Lag;

    move-object v2, v1

    move v1, v0

    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lag;->b:Lag;

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final a(III)Lcj;
    .locals 3

    iget-object v0, p0, Lag;->a:Lcj;

    invoke-virtual {v0}, Lcj;->hashCode()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lag;->a:Lcj;

    invoke-virtual {v0, p2, p3}, Lcj;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lag;->a:Lcj;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lag;->b:Lag;

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lag;->a:Lcj;

    invoke-virtual {v1}, Lcj;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {v1, p2, p3}, Lcj;->a(II)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lag;->b:Lag;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I[II)Lcj;
    .locals 3

    iget-object v0, p0, Lag;->a:Lcj;

    invoke-virtual {v0}, Lcj;->hashCode()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lag;->a:Lcj;

    invoke-virtual {v0, p2, p3}, Lcj;->a([II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lag;->a:Lcj;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lag;->b:Lag;

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lag;->a:Lcj;

    invoke-virtual {v1}, Lcj;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-virtual {v1, p2, p3}, Lcj;->a([II)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lag;->b:Lag;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
