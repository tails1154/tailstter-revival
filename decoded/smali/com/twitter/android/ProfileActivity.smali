.class public Lcom/twitter/android/ProfileActivity;
.super Lcom/twitter/android/TwitterListActivity;


# static fields
.field static final a:Z

.field private static final n:Ljava/text/NumberFormat;

.field private static o:Ljava/text/DateFormat;


# instance fields
.field b:J

.field c:I

.field d:Z

.field e:Ljava/lang/String;

.field private p:Lcom/twitter/android/h;

.field private q:Ljava/lang/String;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/Button;

.field private t:Landroid/widget/ImageButton;

.field private u:Landroid/widget/ProgressBar;

.field private v:Lcom/twitter/android/bb;

.field private w:Landroid/widget/RelativeLayout;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ProfileActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/twitter/android/ProfileActivity;->a:Z

    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/ProfileActivity;->n:Ljava/text/NumberFormat;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/ProfileActivity;->o:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/twitter/android/TwitterListActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/ProfileActivity;->c:I

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->r:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v1, 0x7f02005e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    const v1, 0x7f020056

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->y:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ldk;Ljava/util/HashMap;)V
    .locals 2

    iget-wide v0, p0, Lcom/twitter/android/ProfileActivity;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbf;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method final a(ZII)V
    .locals 9

    const/4 v4, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->s:Landroid/widget/Button;

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->u:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->t:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz p1, :cond_2

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    if-lez p2, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3, v4, v4, v4}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-wide v3, p0, Lcom/twitter/android/ProfileActivity;->b:J

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    invoke-virtual {v2, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    invoke-virtual {v1, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v1, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method final b()V
    .locals 8

    const/4 v2, 0x0

    sget-object v0, Lcom/twitter/android/provider/ac;->c:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/twitter/android/ProfileActivity;->b:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->p:Lcom/twitter/android/h;

    const/4 v1, 0x2

    sget-object v4, Lcom/twitter/android/as;->a:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/h;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final b(I)V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f0200a5

    const v1, 0x7f090052

    invoke-virtual {p0, v4, v0, v1}, Lcom/twitter/android/ProfileActivity;->a(ZII)V

    :goto_0
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    const v1, 0x7f09010e

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/twitter/android/ProfileActivity;->e:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/twitter/android/ProfileActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v3}, Lcom/twitter/android/client/i;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/twitter/android/ProfileActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iput p1, p0, Lcom/twitter/android/ProfileActivity;->c:I

    return-void

    :cond_0
    const v0, 0x7f02003a

    const v1, 0x7f0900c6

    invoke-virtual {p0, v4, v0, v1}, Lcom/twitter/android/ProfileActivity;->a(ZII)V

    goto :goto_0

    :cond_1
    const v1, 0x7f09010f

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/twitter/android/ProfileActivity;->e:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/twitter/android/ProfileActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v3}, Lcom/twitter/android/client/i;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/twitter/android/ProfileActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->w:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const-wide/16 v4, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/TwitterListActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "list_id"

    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v0, "user_id"

    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->h:Lcom/twitter/android/client/i;

    const/4 v1, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/i;->a(IJJ)Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string v0, "name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/ProfileActivity;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->v:Lcom/twitter/android/bb;

    const/4 v1, 0x0

    const-string v2, "bio"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/bb;->a(ILjava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "web"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/bb;->a(ILjava/lang/String;)V

    const/4 v1, 0x2

    const-string v2, "loc"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/bb;->a(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/twitter/android/bb;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClickHandler(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/ImageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->z:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_1
    iget-wide v0, p0, Lcom/twitter/android/ProfileActivity;->b:J

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v2}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/EditProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/twitter/android/provider/ac;->c:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/twitter/android/ProfileActivity;->b:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/ProfileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/twitter/android/ProfileActivity;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Lcom/twitter/android/ProfileActivity;->showDialog(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/twitter/android/ProfileActivity;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/android/ProfileActivity;->c:I

    const v0, 0x7f0200a5

    const v1, 0x7f090052

    invoke-virtual {p0, v4, v0, v1}, Lcom/twitter/android/ProfileActivity;->a(ZII)V

    iget-object v0, p0, Lcom/twitter/android/ProfileActivity;->h:Lcom/twitter/android/client/i;

    iget-wide v1, p0, Lcom/twitter/android/ProfileActivity;->b:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/i;->a(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->d(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->showDialog(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e002f -> :sswitch_0
        0x7f0e0084 -> :sswitch_1
        0x7f0e0085 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const v0, 0x7f030031

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1, v0, v1, v2}, Lcom/twitter/android/TwitterListActivity;->a(Landroid/os/Bundle;IZZ)V

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v0, "type"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/twitter/android/ProfileActivity;->d:Z

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030032

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0e0082

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0e002f

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/twitter/android/ProfileActivity;->r:Landroid/widget/ImageView;

    const v2, 0x7f0e0084

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/twitter/android/ProfileActivity;->s:Landroid/widget/Button;

    const v2, 0x7f0e0085

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/twitter/android/ProfileActivity;->t:Landroid/widget/ImageButton;

    const v2, 0x7f0e0083

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/twitter/android/ProfileActivity;->u:Landroid/widget/ProgressBar;

    const v2, 0x7f0e0030

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/twitter/android/ProfileActivity;->y:Landroid/widget/TextView;

    const v2, 0x7f0e0086

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/twitter/android/ProfileActivity;->x:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/twitter/android/ProfileActivity;->w:Landroid/widget/RelativeLayout;

    const-string v1, "user"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lac;

    new-instance v3, Lcom/twitter/android/bb;

    invoke-direct {v3, p0}, Lcom/twitter/android/bb;-><init>(Landroid/content/Context;)V

    iget-wide v4, v1, Lac;->a:J

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v2}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-nez v2, :cond_7

    const/4 v2, 0x1

    move v6, v2

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/twitter/android/bb;->setNotifyOnChange(Z)V

    invoke-virtual {v3}, Lcom/twitter/android/bb;->clear()V

    iget-object v2, v1, Lac;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/twitter/android/ProfileActivity;->e:Ljava/lang/String;

    iput-wide v4, p0, Lcom/twitter/android/ProfileActivity;->b:J

    iput-object v3, p0, Lcom/twitter/android/ProfileActivity;->v:Lcom/twitter/android/bb;

    iget-object v2, v1, Lac;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/twitter/android/ah;

    const/4 v5, 0x0

    const v7, 0x7f090029

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/twitter/android/ah;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Lcom/twitter/android/bb;->add(Ljava/lang/Object;)V

    :cond_0
    iget-object v2, v1, Lac;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    :goto_2
    new-instance v5, Lcom/twitter/android/ah;

    const/4 v7, 0x1

    const v8, 0x7f09002a

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8, v2, v4}, Lcom/twitter/android/ah;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v3, v5}, Lcom/twitter/android/bb;->add(Ljava/lang/Object;)V

    :cond_1
    iget-object v2, v1, Lac;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lcom/twitter/android/ah;

    const/4 v5, 0x2

    const v7, 0x7f090028

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/twitter/android/ah;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Lcom/twitter/android/bb;->add(Ljava/lang/Object;)V

    :cond_2
    new-instance v2, Lcom/twitter/android/ah;

    const/4 v4, 0x7

    const v5, 0x7f09001f

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/twitter/android/ProfileActivity;->n:Ljava/text/NumberFormat;

    iget v8, v1, Lac;->m:I

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v2, v4, v5, v7, v8}, Lcom/twitter/android/ah;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v3, v2}, Lcom/twitter/android/bb;->add(Ljava/lang/Object;)V

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/UsersActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "owner_id"

    iget-wide v7, p0, Lcom/twitter/android/ProfileActivity;->b:J

    invoke-virtual {v2, v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "type"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v4, Lcom/twitter/android/ah;

    const/4 v5, 0x3

    const v7, 0x7f090026

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/twitter/android/ProfileActivity;->n:Ljava/text/NumberFormat;

    iget v9, v1, Lac;->k:I

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v7, v8, v2}, Lcom/twitter/android/ah;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Lcom/twitter/android/bb;->add(Ljava/lang/Object;)V

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/UsersActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "owner_id"

    iget-wide v7, p0, Lcom/twitter/android/ProfileActivity;->b:J

    invoke-virtual {v2, v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "type"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v4, Lcom/twitter/android/ah;

    const/4 v5, 0x4

    const v7, 0x7f090027

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/twitter/android/ProfileActivity;->n:Ljava/text/NumberFormat;

    iget v9, v1, Lac;->j:I

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v7, v8, v2}, Lcom/twitter/android/ah;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Lcom/twitter/android/bb;->add(Ljava/lang/Object;)V

    if-eqz v6, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/UsersActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "owner_id"

    iget-wide v7, p0, Lcom/twitter/android/ProfileActivity;->b:J

    invoke-virtual {v2, v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "type"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v4, Lcom/twitter/android/ah;

    const/4 v5, 0x6

    const v7, 0x7f090023

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0900bd

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/twitter/android/ProfileActivity;->e:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v7, v8, v2}, Lcom/twitter/android/ah;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Lcom/twitter/android/bb;->add(Ljava/lang/Object;)V

    :cond_3
    new-instance v2, Lcom/twitter/android/ah;

    const/4 v4, 0x5

    const v5, 0x7f09002b

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/twitter/android/ProfileActivity;->o:Ljava/text/DateFormat;

    new-instance v8, Ljava/util/Date;

    iget-wide v9, v1, Lac;->l:J

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v2, v4, v5, v7, v8}, Lcom/twitter/android/ah;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v3, v2}, Lcom/twitter/android/bb;->add(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/twitter/android/bb;->notifyDataSetChanged()V

    iget-object v2, v1, Lac;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/twitter/android/ProfileActivity;->h:Lcom/twitter/android/client/i;

    iget-wide v7, p0, Lcom/twitter/android/ProfileActivity;->b:J

    invoke-virtual {v4, v7, v8, v2}, Lcom/twitter/android/client/i;->e(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/twitter/android/ProfileActivity;->a(Landroid/graphics/Bitmap;)V

    const-string v4, "_normal."

    const-string v5, "."

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/twitter/android/ProfileActivity;->z:Landroid/net/Uri;

    const v2, 0x7f0e0031

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/android/ProfileActivity;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lac;->b:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/twitter/android/ProfileActivity;->a(Ljava/lang/String;)V

    sget-boolean v2, Lcom/twitter/android/ProfileActivity;->a:Z

    if-eqz v2, :cond_4

    const-string v2, "ProfileActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Friend: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/twitter/android/ProfileActivity;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v6, :cond_9

    const/4 v2, 0x1

    const v4, 0x7f020039

    const v5, 0x7f0900c7

    invoke-virtual {p0, v2, v4, v5}, Lcom/twitter/android/ProfileActivity;->a(ZII)V

    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->x:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    const v2, 0x7f0e0029

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-boolean v4, v1, Lac;->h:Z

    if-eqz v4, :cond_a

    const v1, 0x7f0200a6

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    if-eqz p1, :cond_5

    const-string v1, "state_dialog_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/ProfileActivity;->q:Ljava/lang/String;

    :cond_5
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    new-instance v0, Lcom/twitter/android/h;

    invoke-direct {v0, p0, p0}, Lcom/twitter/android/h;-><init>(Lcom/twitter/android/ProfileActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->p:Lcom/twitter/android/h;

    new-instance v0, Lcom/twitter/android/dh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/dh;-><init>(Lcom/twitter/android/ProfileActivity;Lcom/twitter/android/dw;)V

    iput-object v0, p0, Lcom/twitter/android/ProfileActivity;->i:Lcom/twitter/android/client/m;

    sget-object v0, Lcom/twitter/android/service/l;->y:Lcom/twitter/android/service/l;

    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/l;)V

    return-void

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_1

    :cond_8
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_2

    :cond_9
    iget-object v2, p0, Lcom/twitter/android/ProfileActivity;->h:Lcom/twitter/android/client/i;

    iget-wide v4, p0, Lcom/twitter/android/ProfileActivity;->b:J

    invoke-virtual {v2, v4, v5}, Lcom/twitter/android/client/i;->a(J)Ljava/lang/String;

    goto :goto_3

    :cond_a
    iget-boolean v1, v1, Lac;->g:Z

    if-eqz v1, :cond_b

    const v1, 0x7f020041

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_b
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const v7, 0x7f09004a

    const v6, 0x7f0900a5

    const v5, 0x7f0900a4

    const v4, 0x108009b

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v0, v3

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/twitter/android/dw;

    invoke-direct {v0, p0}, Lcom/twitter/android/dw;-><init>(Lcom/twitter/android/ProfileActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090052

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090053

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/twitter/android/ea;

    invoke-direct {v0, p0}, Lcom/twitter/android/ea;-><init>(Lcom/twitter/android/ProfileActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09004b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09004c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/twitter/android/dz;

    invoke-direct {v0, p0}, Lcom/twitter/android/dz;-><init>(Lcom/twitter/android/ProfileActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900e2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/twitter/android/dy;

    invoke-direct {v0, p0}, Lcom/twitter/android/dy;-><init>(Lcom/twitter/android/ProfileActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0900d7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09004e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget v1, p0, Lcom/twitter/android/ProfileActivity;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/twitter/android/ProfileActivity;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_0

    const v2, 0x7f0900d6

    invoke-virtual {p0, v2}, Lcom/twitter/android/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const v2, 0x7f0900d8

    invoke-virtual {p0, v2}, Lcom/twitter/android/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lcom/twitter/android/ProfileActivity;->d:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, v7}, Lcom/twitter/android/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    const v2, 0x7f0900d7

    invoke-virtual {p0, v2}, Lcom/twitter/android/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/twitter/android/dx;

    invoke-direct {v2, p0, v1, p0}, Lcom/twitter/android/dx;-><init>(Lcom/twitter/android/ProfileActivity;ZLandroid/content/Context;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const v2, 0x7f09004b

    invoke-virtual {p0, v2}, Lcom/twitter/android/ProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/ah;

    iget v1, v0, Lcom/twitter/android/ah;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Lcom/twitter/android/ah;->d:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->getParent()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Lcom/twitter/android/ProfileTabActivity;

    invoke-virtual {p0}, Lcom/twitter/android/ProfileTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "timeline"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->g()Z

    move-result v0

    invoke-super {p0}, Lcom/twitter/android/TwitterListActivity;->onResume()V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iput v1, p0, Lcom/twitter/android/ProfileActivity;->c:I

    invoke-virtual {p0, v1, v1, v1}, Lcom/twitter/android/ProfileActivity;->a(ZII)V

    invoke-virtual {p0}, Lcom/twitter/android/ProfileActivity;->b()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/twitter/android/TwitterListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "state_dialog_text"

    iget-object v1, p0, Lcom/twitter/android/ProfileActivity;->q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
