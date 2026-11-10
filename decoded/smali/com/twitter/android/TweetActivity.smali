.class public Lcom/twitter/android/TweetActivity;
.super Lcom/twitter/android/TwitterActivity;

# interfaces
.implements Lan;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/twitter/android/bs;


# instance fields
.field a:Landroid/content/Intent;

.field b:Lcom/twitter/android/provider/ah;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/ImageView;

.field l:Ljava/util/ArrayList;

.field m:Landroid/widget/ImageView;

.field n:Landroid/widget/ImageButton;

.field o:Landroid/widget/ImageButton;

.field p:Landroid/widget/ImageButton;

.field q:Landroid/widget/ImageButton;

.field r:Landroid/widget/RelativeLayout;

.field s:Landroid/widget/ImageView;

.field t:Lcom/twitter/android/bx;

.field private x:Landroid/graphics/Bitmap;

.field private y:Landroid/widget/RelativeLayout;

.field private z:Lcom/twitter/android/client/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/TwitterActivity;-><init>(Z)V

    new-instance v0, Lcom/twitter/android/de;

    invoke-direct {v0, p0}, Lcom/twitter/android/de;-><init>(Lcom/twitter/android/TweetActivity;)V

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->z:Lcom/twitter/android/client/m;

    return-void
.end method

.method private a(JLandroid/content/Intent;)V
    .locals 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->t:Lcom/twitter/android/bx;

    sget-object v1, Lcom/twitter/android/provider/ai;->b:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x1

    new-instance v2, Lcom/twitter/android/provider/ah;

    invoke-direct {v2}, Lcom/twitter/android/provider/ah;-><init>()V

    sget-object v4, Lcom/twitter/android/provider/ah;->b:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/bx;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/ProfileTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "screen_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/ProfileTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method final a(Landroid/content/Context;I)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/service/TwitterService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "LOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "auth"

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v2}, Lcom/twitter/android/client/i;->c()Lab;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "impression_id"

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "log_ev"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method final a(Laz;)V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Laz;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->y:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0d0007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0d0008

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0d0009

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v0, p1, Laz;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v12

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldi;

    iget-object v0, v0, Ldi;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v7, p0, Lcom/twitter/android/TweetActivity;->u:Lcom/twitter/android/client/i;

    iget-object v7, v7, Lcom/twitter/android/client/i;->a:Lbe;

    invoke-virtual {v7, v0, v13}, Lbe;->a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v8, Lcom/twitter/android/widget/OverlayImageView;

    invoke-direct {v8, p0}, Lcom/twitter/android/widget/OverlayImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lcom/twitter/android/widget/OverlayImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0200a7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/twitter/android/widget/OverlayImageView;->a(Landroid/graphics/drawable/Drawable;)V

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v6}, Lcom/twitter/android/widget/OverlayImageView;->setId(I)V

    invoke-virtual {v8, v12}, Lcom/twitter/android/widget/OverlayImageView;->setAdjustViewBounds(Z)V

    if-le v6, v12, :cond_3

    const/4 v10, 0x3

    sub-int v11, v6, v12

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_3
    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v8, v9}, Lcom/twitter/android/widget/OverlayImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Lcom/twitter/android/dd;

    invoke-direct {v9, p0, v0}, Lcom/twitter/android/dd;-><init>(Lcom/twitter/android/TweetActivity;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/twitter/android/widget/OverlayImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, p0, Lcom/twitter/android/TweetActivity;->l:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/twitter/android/TweetActivity;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v9, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    if-eqz v7, :cond_4

    invoke-virtual {v8, v7}, Lcom/twitter/android/widget/OverlayImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_2
    invoke-virtual {v8, v0}, Lcom/twitter/android/widget/OverlayImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v8, v13}, Lcom/twitter/android/widget/OverlayImageView;->setVisibility(I)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_4
    iget-object v7, p0, Lcom/twitter/android/TweetActivity;->x:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v7}, Lcom/twitter/android/widget/OverlayImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->y:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public final a(Ldk;Ljava/util/HashMap;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->b:Lcom/twitter/android/provider/ah;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->b:Lcom/twitter/android/provider/ah;

    iget-wide v0, v0, Lcom/twitter/android/provider/ah;->m:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbf;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lbf;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, p0, v0}, Lcom/twitter/android/TweetActivity;->a(Landroid/content/Context;I)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/SearchTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, p0, v0}, Lcom/twitter/android/TweetActivity;->a(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Lcom/twitter/android/TweetActivity;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, p0, v0}, Lcom/twitter/android/TweetActivity;->a(Landroid/content/Context;I)V

    new-instance v0, Lcom/twitter/android/service/g;

    sget-object v1, Lcom/twitter/android/service/l;->v:Lcom/twitter/android/service/l;

    sget-object v2, Lcom/twitter/android/service/l;->r:Lcom/twitter/android/service/l;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/g;-><init>(Lcom/twitter/android/service/l;Lcom/twitter/android/service/l;)V

    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/g;)V

    invoke-static {p0, p1, p2}, Lcom/twitter/android/TweetActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(J)V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/SearchTweetsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->b:Lcom/twitter/android/provider/ah;

    iget-object v2, v1, Lcom/twitter/android/provider/ah;->D:Lal;

    if-eqz v2, :cond_0

    const-string v2, "place"

    iget-object v3, v1, Lcom/twitter/android/provider/ah;->D:Lal;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    iget-boolean v2, v1, Lcom/twitter/android/provider/ah;->t:Z

    if-eqz v2, :cond_1

    new-instance v2, Landroid/location/Location;

    const-string v3, "gps"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iget-wide v3, v1, Lcom/twitter/android/provider/ah;->u:D

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    iget-wide v3, v1, Lcom/twitter/android/provider/ah;->v:D

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    const-string v1, "loc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onClickHandler(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/PostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "reply_to_tweet"

    new-array v2, v5, [Lcom/twitter/android/provider/ah;

    iget-object v3, p0, Lcom/twitter/android/TweetActivity;->b:Lcom/twitter/android/provider/ah;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "com.twitter.android.post.reply"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lcom/twitter/android/service/g;

    sget-object v1, Lcom/twitter/android/service/l;->t:Lcom/twitter/android/service/l;

    sget-object v2, Lcom/twitter/android/service/l;->r:Lcom/twitter/android/service/l;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/g;-><init>(Lcom/twitter/android/service/l;Lcom/twitter/android/service/l;)V

    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/g;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->b:Lcom/twitter/android/provider/ah;

    iget-boolean v1, v0, Lcom/twitter/android/provider/ah;->k:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->u:Lcom/twitter/android/client/i;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->b:Lcom/twitter/android/provider/ah;

    iget-wide v2, v2, Lcom/twitter/android/provider/ah;->n:J

    iget-object v4, p0, Lcom/twitter/android/TweetActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/i;->d(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-boolean v6, v0, Lcom/twitter/android/provider/ah;->k:Z

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->n:Landroid/widget/ImageButton;

    const v2, 0x7f0200b9

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    move-object v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/twitter/android/service/g;

    sget-object v1, Lcom/twitter/android/service/l;->w:Lcom/twitter/android/service/l;

    sget-object v2, Lcom/twitter/android/service/l;->r:Lcom/twitter/android/service/l;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/g;-><init>(Lcom/twitter/android/service/l;Lcom/twitter/android/service/l;)V

    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/g;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->u:Lcom/twitter/android/client/i;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->b:Lcom/twitter/android/provider/ah;

    iget-wide v2, v2, Lcom/twitter/android/provider/ah;->n:J

    iget-object v4, p0, Lcom/twitter/android/TweetActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/android/client/i;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-boolean v5, v0, Lcom/twitter/android/provider/ah;->k:Z

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->n:Landroid/widget/ImageButton;

    const v2, 0x7f0200ba

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    move-object v0, v1

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->b:Lcom/twitter/android/provider/ah;

    iget-wide v1, v0, Lcom/twitter/android/provider/ah;->p:J

    iget-object v3, p0, Lcom/twitter/android/TweetActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v3}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/twitter/android/provider/ah;->q:Z

    if-eqz v1, :cond_1

    move v1, v5

    :goto_2
    new-instance v2, Lcom/twitter/android/df;

    invoke-direct {v2, p0, v1, v0, p0}, Lcom/twitter/android/df;-><init>(Lcom/twitter/android/TweetActivity;ZLcom/twitter/android/provider/ah;Landroid/content/Context;)V

    invoke-static {p0, v1, v2}, Lcom/twitter/android/client/i;->a(Landroid/app/Activity;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_1
    move v1, v6

    goto :goto_2

    :pswitch_4
    invoke-virtual {p0, v5}, Lcom/twitter/android/TweetActivity;->showDialog(I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->a:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lcom/twitter/android/service/g;

    sget-object v1, Lcom/twitter/android/service/l;->x:Lcom/twitter/android/service/l;

    sget-object v2, Lcom/twitter/android/service/l;->r:Lcom/twitter/android/service/l;

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/service/g;-><init>(Lcom/twitter/android/service/l;Lcom/twitter/android/service/l;)V

    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/g;)V

    goto/16 :goto_0

    :pswitch_6
    const/4 v0, 0x3

    invoke-virtual {p0, p0, v0}, Lcom/twitter/android/TweetActivity;->a(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twitter/android/TweetActivity;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/android/TweetActivity;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/ConversationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "orig"

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->b:Lcom/twitter/android/provider/ah;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->b:Lcom/twitter/android/provider/ah;

    iget-wide v0, v0, Lcom/twitter/android/provider/ah;->r:J

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/TweetActivity;->b(J)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e006d
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const v6, 0x7f0e006e

    const v8, 0x7f090037

    const/4 v1, 0x1

    const/4 v5, 0x0

    const v0, 0x7f03002f

    invoke-super {p0, p1, v0}, Lcom/twitter/android/TwitterActivity;->a(Landroid/os/Bundle;I)V

    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->u:Lcom/twitter/android/client/i;

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->z:Lcom/twitter/android/client/m;

    invoke-virtual {v0, v2}, Lcom/twitter/android/client/i;->a(Lcom/twitter/android/client/m;)V

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v0, p0}, Lcom/twitter/android/client/i;->a(Lan;)V

    const v0, 0x7f0e007a

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0e0077

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->r:Landroid/widget/RelativeLayout;

    const v2, 0x7f0e0029

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/twitter/android/TweetActivity;->s:Landroid/widget/ImageView;

    const v2, 0x7f0e0031

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/twitter/android/TweetActivity;->g:Landroid/widget/TextView;

    const v2, 0x7f0e0030

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/twitter/android/TweetActivity;->f:Landroid/widget/TextView;

    const v2, 0x7f0e002f

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->k:Landroid/widget/ImageView;

    const v0, 0x7f0e002a

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcom/twitter/android/TweetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->h:Landroid/widget/TextView;

    const v0, 0x7f0e007c

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f0e0055

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f0e007d

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/twitter/android/TweetActivity;->l:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->y:Landroid/widget/RelativeLayout;

    const v0, 0x7f0e007e

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->m:Landroid/widget/ImageView;

    const v0, 0x7f0e0076

    invoke-virtual {p0, v0}, Lcom/twitter/android/TweetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0e0070

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->n:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->o:Landroid/widget/ImageButton;

    const v0, 0x7f0e006f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->p:Landroid/widget/ImageButton;

    const v0, 0x7f0e0072

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->q:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const v2, 0x7f0d0001

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v0, v2}, Lt;->a(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->d:Ljava/lang/String;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v2, p0, Lcom/twitter/android/TweetActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f020057

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->x:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/twitter/android/bx;

    invoke-direct {v0, p0, v4}, Lcom/twitter/android/bx;-><init>(Lcom/twitter/android/TweetActivity;Landroid/content/ContentResolver;)V

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    iput-object v0, p0, Lcom/twitter/android/TweetActivity;->t:Lcom/twitter/android/bx;

    const-string v7, "twitter"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :try_start_0
    const-string v0, "status_id"

    invoke-virtual {v3, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v2}, Lcom/twitter/android/TweetActivity;->a(JLandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {p0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->finish()V

    goto :goto_0

    :cond_0
    const-string v7, "http"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_1
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, v2}, Lcom/twitter/android/TweetActivity;->a(JLandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {p0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/twitter/android/TweetActivity;->finish()V

    goto :goto_0

    :cond_1
    const-string v2, "vnd.android.cursor.item/vnd.twitter.android.statuses"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/twitter/android/provider/ah;

    invoke-direct {v2}, Lcom/twitter/android/provider/ah;-><init>()V

    sget-object v4, Lcom/twitter/android/provider/ah;->b:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/bx;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "vnd.android.cursor.item/vnd.twitter.android.search.results"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/twitter/android/provider/aj;

    invoke-direct {v2}, Lcom/twitter/android/provider/aj;-><init>()V

    sget-object v4, Lcom/twitter/android/provider/aj;->a:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/bx;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled content uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/twitter/android/TwitterActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09003a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900a4

    new-instance v2, Lcom/twitter/android/dc;

    invoke-direct {v2, p0}, Lcom/twitter/android/dc;-><init>(Lcom/twitter/android/TweetActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/twitter/android/TwitterActivity;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->u:Lcom/twitter/android/client/i;

    iget-object v1, p0, Lcom/twitter/android/TweetActivity;->z:Lcom/twitter/android/client/m;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/i;->b(Lcom/twitter/android/client/m;)V

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v0, p0}, Lcom/twitter/android/client/i;->b(Lan;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/TweetActivity;->r:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
