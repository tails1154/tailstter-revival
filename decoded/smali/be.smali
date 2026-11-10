.class public final Lbe;
.super Lax;


# instance fields
.field private final d:Ll;

.field private final e:Lcom/twitter/android/provider/ab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ll;)V
    .locals 2

    const/16 v0, 0x19

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lax;-><init>(II)V

    iput-object p2, p0, Lbe;->d:Ll;

    invoke-static {p1}, Lcom/twitter/android/provider/ab;->a(Landroid/content/Context;)Lcom/twitter/android/provider/ab;

    move-result-object v0

    iput-object v0, p0, Lbe;->e:Lcom/twitter/android/provider/ab;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1, p1, v0}, Lax;->a(Ljava/lang/Object;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;)Ln;
    .locals 1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lbe;->e:Lcom/twitter/android/provider/ab;

    invoke-virtual {v0, p1}, Lcom/twitter/android/provider/ab;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lbe;->a(Landroid/graphics/Bitmap;Ljava/lang/Object;Ljava/lang/String;)Ln;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;[B)Ln;
    .locals 1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lbe;->e:Lcom/twitter/android/provider/ab;

    invoke-virtual {v0, p1, p3}, Lcom/twitter/android/provider/ab;->a(Ljava/lang/String;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lbe;->a(Landroid/graphics/Bitmap;Ljava/lang/Object;Ljava/lang/String;)Ln;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/util/HashMap;)V
    .locals 1

    iget-object v0, p0, Lbe;->d:Ll;

    invoke-interface {v0, p0, p1}, Ll;->a(Lax;Ljava/util/HashMap;)V

    return-void
.end method

.method protected final bridge synthetic b(Ljava/lang/Object;Ljava/lang/String;)Ln;
    .locals 2

    check-cast p1, Ljava/lang/String;

    new-instance v0, Ln;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Ln;-><init>(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-object v0
.end method
