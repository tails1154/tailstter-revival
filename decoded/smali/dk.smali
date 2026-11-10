.class public final Ldk;
.super Lax;


# instance fields
.field private d:I

.field private final e:Ljava/util/ArrayList;

.field private final f:Lcom/twitter/android/provider/ab;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/16 v0, 0x96

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1}, Lax;-><init>(II)V

    iput p2, p0, Ldk;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldk;->e:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/twitter/android/provider/ab;->a(Landroid/content/Context;)Lcom/twitter/android/provider/ab;

    move-result-object v0

    iput-object v0, p0, Ldk;->f:Lcom/twitter/android/provider/ab;

    return-void
.end method


# virtual methods
.method public final a(J)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-super {p0, v0}, Lax;->a(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final a(JLjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    invoke-super {p0, v0, p3, v1}, Lax;->a(Ljava/lang/Object;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;)Ln;
    .locals 3

    check-cast p1, Ljava/lang/Long;

    iget v0, p0, Ldk;->d:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid cache type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldk;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Ldk;->f:Lcom/twitter/android/provider/ab;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/provider/ab;->d(J)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Ldk;->a(Landroid/graphics/Bitmap;Ljava/lang/Object;Ljava/lang/String;)Ln;

    move-result-object p0

    check-cast p0, Lbf;

    move-object v0, p0

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Ldk;->f:Lcom/twitter/android/provider/ab;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/provider/ab;->e(J)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Ldk;->a(Landroid/graphics/Bitmap;Ljava/lang/Object;Ljava/lang/String;)Ln;

    move-result-object p0

    check-cast p0, Lbf;

    move-object v0, p0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;[B)Ln;
    .locals 5

    const/4 v4, 0x0

    check-cast p1, Ljava/lang/Long;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget v1, p0, Ldk;->d:I

    packed-switch v1, :pswitch_data_0

    move-object v0, v4

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v1, p0, Ldk;->f:Lcom/twitter/android/provider/ab;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p2, v0}, Lcom/twitter/android/provider/ab;->a(JLjava/lang/String;Ljava/io/ByteArrayInputStream;)[B

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Ldk;->a(Landroid/graphics/Bitmap;Ljava/lang/Object;Ljava/lang/String;)Ln;

    move-result-object p0

    check-cast p0, Lbf;

    move-object v0, p0

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Ldk;->f:Lcom/twitter/android/provider/ab;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/twitter/android/provider/ab;->a(JLjava/io/ByteArrayInputStream;)[B

    move-result-object v0

    goto :goto_1

    :cond_0
    move-object v0, v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lan;)V
    .locals 1

    iget-object v0, p0, Ldk;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final a(Ljava/util/HashMap;)V
    .locals 2

    iget-object v0, p0, Ldk;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan;

    invoke-interface {v0, p0, p1}, Lan;->a(Ldk;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final bridge synthetic b(Ljava/lang/Object;Ljava/lang/String;)Ln;
    .locals 3

    check-cast p1, Ljava/lang/Long;

    new-instance v0, Lbf;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p2}, Lbf;-><init>(JLjava/lang/String;)V

    return-object v0
.end method

.method public final b(Lan;)V
    .locals 1

    iget-object v0, p0, Ldk;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
