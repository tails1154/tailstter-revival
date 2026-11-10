.class public final Lbx;
.super Ljava/lang/Object;


# instance fields
.field private a:[[B

.field private b:[[C


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lap;->values()[Lap;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[B

    iput-object v0, p0, Lbx;->a:[[B

    invoke-static {}, Ldc;->values()[Ldc;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[C

    iput-object v0, p0, Lbx;->b:[[C

    return-void
.end method


# virtual methods
.method public final a(Lap;[B)V
    .locals 2

    iget-object v0, p0, Lbx;->a:[[B

    invoke-virtual {p1}, Lap;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    return-void
.end method

.method public final a(Ldc;[C)V
    .locals 2

    iget-object v0, p0, Lbx;->b:[[C

    invoke-virtual {p1}, Ldc;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    return-void
.end method

.method public final a(Ldc;)[C
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbx;->a(Ldc;I)[C

    move-result-object v0

    return-object v0
.end method

.method public final a(Ldc;I)[C
    .locals 4

    invoke-static {p1}, Ldc;->a(Ldc;)I

    move-result v0

    if-le v0, p2, :cond_2

    invoke-static {p1}, Ldc;->a(Ldc;)I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Ldc;->ordinal()I

    move-result v1

    iget-object v2, p0, Lbx;->b:[[C

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    array-length v3, v2

    if-ge v3, v0, :cond_1

    :cond_0
    new-array v0, v0, [C

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lbx;->b:[[C

    const/4 v3, 0x0

    aput-object v3, v0, v1

    move-object v0, v2

    goto :goto_1

    :cond_2
    move v0, p2

    goto :goto_0
.end method
