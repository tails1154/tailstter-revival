.class public final Lw;
.super Lcj;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcj;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lw;->a:I

    iput p4, p0, Lw;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(II)Z
    .locals 1

    iget v0, p0, Lw;->a:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lw;->b:I

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a([II)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    aget v0, p1, v2

    iget v1, p0, Lw;->a:I

    if-ne v0, v1, :cond_0

    aget v0, p1, v3

    iget v1, p0, Lw;->b:I

    if-ne v0, v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method
