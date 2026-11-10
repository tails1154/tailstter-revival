.class public final Ls;
.super Lcj;


# instance fields
.field private a:[I

.field private b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I[II)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcj;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x3

    if-ge p4, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Qlen must >= 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p3, p0, Ls;->a:[I

    iput p4, p0, Ls;->b:I

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

    const/4 v0, 0x0

    return v0
.end method

.method public final a([II)Z
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Ls;->b:I

    if-eq p2, v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v3

    :goto_1
    if-ge v0, p2, :cond_2

    aget v1, p1, v0

    iget-object v2, p0, Ls;->a:[I

    aget v2, v2, v0

    if-eq v1, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
