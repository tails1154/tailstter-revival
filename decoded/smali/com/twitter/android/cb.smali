.class public final Lcom/twitter/android/cb;
.super Landroid/widget/CursorAdapter;


# instance fields
.field private final a:Z

.field private final b:Lcom/twitter/android/client/i;

.field private final c:I

.field private final d:Lcom/twitter/android/widget/e;

.field private final e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/android/client/i;ZILcom/twitter/android/widget/e;Ljava/util/ArrayList;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    iput-object p2, p0, Lcom/twitter/android/cb;->b:Lcom/twitter/android/client/i;

    iput-boolean p3, p0, Lcom/twitter/android/cb;->a:Z

    iput p4, p0, Lcom/twitter/android/cb;->c:I

    iput-object p5, p0, Lcom/twitter/android/cb;->d:Lcom/twitter/android/widget/e;

    iput-object p6, p0, Lcom/twitter/android/cb;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    check-cast p1, Lcom/twitter/android/widget/UserView;

    const/4 v0, 0x5

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/twitter/android/widget/UserView;->a(J)V

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/twitter/android/cb;->b:Lcom/twitter/android/client/i;

    invoke-virtual {v3, v1, v2, v0}, Lcom/twitter/android/client/i;->e(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/android/widget/UserView;->a(Landroid/graphics/Bitmap;)V

    :goto_0
    const/4 v0, 0x4

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/twitter/android/widget/UserView;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v4, :cond_2

    move v0, v4

    :goto_1
    invoke-virtual {p1, v0}, Lcom/twitter/android/widget/UserView;->b(Z)V

    const/4 v0, 0x7

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v4, :cond_3

    move v0, v4

    :goto_2
    invoke-virtual {p1, v0}, Lcom/twitter/android/widget/UserView;->c(Z)V

    iget-object v0, p0, Lcom/twitter/android/cb;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cb;->e:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/twitter/android/widget/UserView;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twitter/android/widget/UserView;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_1

    :cond_3
    move v0, v5

    goto :goto_2
.end method

.method public final getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/twitter/android/cb;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/UserView;

    iget-boolean v1, p0, Lcom/twitter/android/cb;->a:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/UserView;->a(Z)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/twitter/android/cb;->c:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/twitter/android/cb;->c:I

    iget-object v2, p0, Lcom/twitter/android/cb;->d:Lcom/twitter/android/widget/e;

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/widget/UserView;->a(ILcom/twitter/android/widget/e;)V

    goto :goto_0
.end method
