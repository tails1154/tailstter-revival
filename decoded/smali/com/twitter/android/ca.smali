.class final Lcom/twitter/android/ca;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private synthetic a:Lcom/twitter/android/PostActivity;


# direct methods
.method public constructor <init>(Lcom/twitter/android/PostActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/twitter/android/ca;->a:Lcom/twitter/android/PostActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final a()Laz;
    .locals 7

    invoke-virtual {p0}, Lcom/twitter/android/ca;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v2, Laz;

    invoke-direct {v2}, Laz;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v2, Laz;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_0

    new-instance v4, Ldi;

    invoke-direct {v4}, Ldi;-><init>()V

    int-to-long v5, v3

    iput-wide v5, v4, Ldi;->f:J

    invoke-virtual {p0, v3}, Lcom/twitter/android/ca;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/bt;

    iget-object v0, v0, Lcom/twitter/android/bt;->d:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Ldi;->c:Ljava/lang/String;

    iget-object v0, v2, Laz;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/ca;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/by;

    iget-object v0, p0, Lcom/twitter/android/ca;->a:Lcom/twitter/android/PostActivity;

    invoke-direct {v2, v0}, Lcom/twitter/android/by;-><init>(Lcom/twitter/android/PostActivity;)V

    const v0, 0x7f0e0002

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/twitter/android/by;->a:Landroid/widget/ImageView;

    const v0, 0x7f0e0006

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, v2, Lcom/twitter/android/by;->d:Landroid/widget/ProgressBar;

    const v0, 0x7f0e0003

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/twitter/android/by;->b:Landroid/widget/TextView;

    const v0, 0x7f0e0005

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/twitter/android/by;->c:Landroid/widget/TextView;

    const v0, 0x7f0e0004

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v2, Lcom/twitter/android/by;->e:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/twitter/android/ca;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/twitter/android/bt;

    iget-object v2, v0, Lcom/twitter/android/by;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/twitter/android/bt;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, v0, Lcom/twitter/android/by;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/twitter/android/bt;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/twitter/android/by;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/twitter/android/bt;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/twitter/android/by;->e:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    iget v2, p0, Lcom/twitter/android/bt;->f:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-object v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/by;

    move-object v1, p2

    goto :goto_0

    :pswitch_1
    iget-object v2, v0, Lcom/twitter/android/by;->e:Landroid/widget/ImageButton;

    const v3, 0x7f020020

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v2, v0, Lcom/twitter/android/by;->e:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lcom/twitter/android/by;->e:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setClickable(Z)V

    iget-object v0, v0, Lcom/twitter/android/by;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    :pswitch_2
    iget-object v2, v0, Lcom/twitter/android/by;->e:Landroid/widget/ImageButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, v0, Lcom/twitter/android/by;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    :pswitch_3
    iget-object v2, v0, Lcom/twitter/android/by;->e:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v2, v0, Lcom/twitter/android/by;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, v0, Lcom/twitter/android/by;->d:Landroid/widget/ProgressBar;

    iget v2, p0, Lcom/twitter/android/bt;->h:I

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final isEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
