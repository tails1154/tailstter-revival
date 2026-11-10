.class final Lcom/twitter/android/au;
.super Landroid/widget/CursorAdapter;


# instance fields
.field private synthetic a:Lcom/twitter/android/MessagesThreadActivity;


# direct methods
.method public constructor <init>(Lcom/twitter/android/MessagesThreadActivity;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/au;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-direct {p0, p1, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    const/4 v6, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/bc;

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x5

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/twitter/android/au;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v4, v4, Lcom/twitter/android/MessagesThreadActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v4, v1, v2, v3}, Lcom/twitter/android/client/i;->e(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/twitter/android/bc;->a:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/au;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v2, v2, Lcom/twitter/android/MessagesThreadActivity;->h:Lcom/twitter/android/client/i;

    const/4 v3, 0x1

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x6

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/twitter/android/client/i;->a(IJ[B)Laz;

    move-result-object v2

    iget-object v3, v0, Lcom/twitter/android/bc;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/twitter/android/au;->a:Lcom/twitter/android/MessagesThreadActivity;

    iget-object v4, v4, Lcom/twitter/android/MessagesThreadActivity;->h:Lcom/twitter/android/client/i;

    iget v4, v4, Lcom/twitter/android/client/i;->d:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, v0, Lcom/twitter/android/bc;->b:Landroid/widget/TextView;

    const/4 v4, 0x3

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/android/au;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-static {v1, v3, v4, v2, v5}, Lcom/twitter/android/bh;->a(Landroid/content/res/Resources;Landroid/widget/TextView;Ljava/lang/String;Laz;Lcom/twitter/android/bs;)V

    iget-object v0, v0, Lcom/twitter/android/bc;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lci;->a(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/twitter/android/bc;->a:Landroid/widget/ImageView;

    const v2, 0x7f020056

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_1
    move-object v1, v4

    goto :goto_0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/twitter/android/bc;

    iget-object v2, p0, Lcom/twitter/android/au;->a:Lcom/twitter/android/MessagesThreadActivity;

    invoke-direct {v1, v2}, Lcom/twitter/android/bc;-><init>(Lcom/twitter/android/MessagesThreadActivity;)V

    const v2, 0x7f0e002f

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v1, Lcom/twitter/android/bc;->a:Landroid/widget/ImageView;

    const v2, 0x7f0e002a

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/twitter/android/bc;->b:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/twitter/android/bc;->b:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v2, 0x7f0e002c

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/twitter/android/bc;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method
