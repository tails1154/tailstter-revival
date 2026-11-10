.class public Lcy;
.super Lah;


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lah;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lah;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    check-cast p1, Lcy;

    iget-object v0, p0, Lcy;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcy;->c:Ljava/lang/String;

    iget-object v1, p1, Lcy;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lcy;->c:Ljava/lang/String;

    if-nez v0, :cond_4

    :cond_6
    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Lah;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcy;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcy;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcy;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcy;->e:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcy;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcy;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcy;->c:Ljava/lang/String;

    goto :goto_0
.end method
