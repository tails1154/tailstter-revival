.class public final Lv;
.super Lcj;


# static fields
.field private static a:Lv;


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lv;

    const-string v1, ""

    invoke-direct {v0, v1, v2, v2}, Lv;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lv;->a:Lv;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcj;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lv;->b:I

    return-void
.end method

.method static final a()Lv;
    .locals 1

    sget-object v0, Lv;->a:Lv;

    return-object v0
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    iget v0, p0, Lv;->b:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(II)Z
    .locals 1

    iget v0, p0, Lv;->b:I

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

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

    if-ne p2, v3, :cond_0

    aget v0, p1, v2

    iget v1, p0, Lv;->b:I

    if-ne v0, v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method
