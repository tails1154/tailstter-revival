.class public Lcom/twitter/android/PostActivity;
.super Lcom/twitter/android/TwitterActivity;

# interfaces
.implements Lan;
.implements Landroid/location/LocationListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/twitter/android/bi;


# static fields
.field static final a:Z


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Z

.field private E:Ljava/util/HashMap;

.field private F:I

.field private G:Z

.field b:Z

.field c:Lcom/twitter/android/b;

.field d:Landroid/widget/MultiAutoCompleteTextView;

.field e:Lcom/twitter/android/ca;

.field f:Landroid/widget/Button;

.field g:J

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Lcom/twitter/android/widget/TweetView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageButton;

.field private m:Landroid/location/LocationManager;

.field private n:Lcom/twitter/android/er;

.field private o:Lcom/twitter/android/do;

.field private p:Landroid/content/SharedPreferences;

.field private q:Lcom/twitter/android/c;

.field private r:J

.field private s:Z

.field private t:Z

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "PostActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/twitter/android/PostActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/TwitterActivity;-><init>(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->E:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/PostActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/twitter/android/PostActivity;->r:J

    return-wide v0
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->d:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/PostActivity;->t:Z

    return-void
.end method

.method static synthetic b(Lcom/twitter/android/PostActivity;)V
    .locals 0

    invoke-super {p0}, Lcom/twitter/android/TwitterActivity;->a()V

    return-void
.end method

.method private g()V
    .locals 11

    const/16 v5, 0x65

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/twitter/android/PostActivity;->r:J

    iput-object v2, p0, Lcom/twitter/android/PostActivity;->x:Ljava/lang/String;

    iget-object v3, p0, Lcom/twitter/android/PostActivity;->d:Landroid/widget/MultiAutoCompleteTextView;

    iget v0, p0, Lcom/twitter/android/PostActivity;->A:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f09008d

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->i:Landroid/widget/RelativeLayout;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "twitter"

    invoke-virtual {v4}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    const-string v7, "text"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v7, "message"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_0
    const-string v8, "post"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :try_start_0
    const-string v2, "in_reply_to_status_id"

    invoke-virtual {v5, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/twitter/android/PostActivity;->r:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v7

    :cond_1
    :goto_1
    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/twitter/android/PostActivity;->c:Lcom/twitter/android/b;

    invoke-virtual {v5, v0}, Lcom/twitter/android/b;->a(Landroid/net/Uri;)Lcom/twitter/android/e;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a(Landroid/net/Uri;)Lcom/twitter/android/bt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a(Lcom/twitter/android/bt;)V

    :cond_2
    if-eqz v2, :cond_5

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, v2}, Lcom/twitter/android/PostActivity;->a(Ljava/lang/CharSequence;)V

    const-string v0, "selection"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "selection"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    array-length v4, v0

    if-ne v4, v10, :cond_5

    aget v4, v0, v9

    aget v0, v0, v1

    if-ltz v4, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_5

    invoke-virtual {v3, v4, v0}, Landroid/widget/EditText;->setSelection(II)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/twitter/android/PostActivity;->r:J

    move-object v2, v7

    goto :goto_1

    :cond_3
    const-string v8, "quote"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const v2, 0x7f090004

    new-array v6, v10, [Ljava/lang/Object;

    const-string v8, "screen_name"

    invoke-virtual {v5, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v9

    aput-object v7, v6, v1

    invoke-virtual {p0, v2, v6}, Lcom/twitter/android/PostActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v4, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    :pswitch_1
    const v0, 0x7f090090

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "reply_to_tweet"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_6

    array-length v3, v0

    if-lez v3, :cond_6

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a([Landroid/os/Parcelable;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->n:Lcom/twitter/android/er;

    sget-object v4, Lcom/twitter/android/provider/ah;->b:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/er;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private h()Z
    .locals 1

    invoke-direct {p0}, Lcom/twitter/android/PostActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/PostActivity;->t:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->e:Lcom/twitter/android/ca;

    invoke-virtual {v0}, Lcom/twitter/android/ca;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->d:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(Landroid/net/Uri;)Lcom/twitter/android/bt;
    .locals 2

    new-instance v0, Lcom/twitter/android/bt;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/twitter/android/bt;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->c:Lcom/twitter/android/b;

    invoke-virtual {v1, v0}, Lcom/twitter/android/b;->a(Lcom/twitter/android/e;)V

    return-object v0
.end method

.method protected final a()V
    .locals 1

    invoke-direct {p0}, Lcom/twitter/android/PostActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/twitter/android/TwitterActivity;->a()V

    goto :goto_0
.end method

.method final a(Lcom/twitter/android/bt;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->E:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/twitter/android/bt;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/twitter/android/bt;->a(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/twitter/android/bf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/bf;-><init>(Lcom/twitter/android/PostActivity;Lcom/twitter/android/dm;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/twitter/android/bt;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/twitter/android/bf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final a(Ldk;Ljava/util/HashMap;)V
    .locals 2

    iget v0, p0, Lcom/twitter/android/PostActivity;->A:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->j:Lcom/twitter/android/widget/TweetView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetView;->a()Lcom/twitter/android/provider/ah;

    move-result-object v0

    iget-wide v0, v0, Lcom/twitter/android/provider/ah;->m:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->j:Lcom/twitter/android/widget/TweetView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/TweetView;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->o:Lcom/twitter/android/do;

    invoke-virtual {v0}, Lcom/twitter/android/do;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->c:Lcom/twitter/android/b;

    iput-object p1, v0, Lcom/twitter/android/b;->a:Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->showDialog(I)V

    return-void
.end method

.method final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->l:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const v1, 0x7f0200cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :goto_0
    iput-boolean p1, p0, Lcom/twitter/android/PostActivity;->s:Z

    return-void

    :cond_0
    const v1, 0x7f0200cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method final a([Landroid/os/Parcelable;)V
    .locals 14

    const/16 v13, 0x20

    const/4 v12, 0x1

    const/16 v11, 0x40

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v3

    array-length v0, p1

    sub-int/2addr v0, v12

    move v5, v0

    :goto_0
    if-ltz v5, :cond_3

    aget-object v0, p1, v5

    check-cast v0, Lcom/twitter/android/provider/ah;

    iget-object v6, v0, Lcom/twitter/android/provider/ah;->o:Ljava/lang/String;

    iget-object v7, p0, Lcom/twitter/android/PostActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v7, v0}, Lcom/twitter/android/client/i;->b(Lcom/twitter/android/provider/ah;)Laz;

    move-result-object v7

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    array-length v8, p1

    sub-int/2addr v8, v12

    if-ne v5, v8, :cond_0

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v8, v0, Lcom/twitter/android/provider/ah;->n:J

    iput-wide v8, p0, Lcom/twitter/android/PostActivity;->r:J

    iget-object v6, p0, Lcom/twitter/android/PostActivity;->j:Lcom/twitter/android/widget/TweetView;

    invoke-virtual {v6, v0}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/provider/ah;)V

    if-eqz v7, :cond_0

    iget-object v0, v7, Laz;->c:Lcc;

    if-eqz v0, :cond_0

    iget-object v0, v7, Laz;->c:Lcc;

    iget-object v0, v0, Lcc;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->x:Ljava/lang/String;

    :cond_0
    if-eqz v7, :cond_2

    iget-object v0, v7, Laz;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, v7, Laz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldl;

    iget-wide v7, v0, Ldl;->d:J

    cmp-long v7, v3, v7

    if-eqz v7, :cond_1

    iget-object v7, v0, Ldl;->c:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v0, Ldl;->c:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, v0, Ldl;->c:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->d:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v11, :cond_5

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/twitter/android/PostActivity;->a(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/EditText;->setSelection(II)V

    return-void

    :cond_6
    move v2, v10

    goto :goto_2
.end method

.method public final a_(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/twitter/android/TwitterActivity;->a_(I)V

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->d:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/MultiAutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->b()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e001c
        :pswitch_0
    .end packed-switch
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-boolean v5, p0, Lcom/twitter/android/PostActivity;->t:Z

    sget-object v0, Lae;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    move v1, v4

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/twitter/android/PostActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/twitter/android/client/i;->a(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/twitter/android/PostActivity;->D:Z

    if-eqz v2, :cond_0

    const v2, 0x7f090105

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iput-boolean v4, p0, Lcom/twitter/android/PostActivity;->D:Z

    iget v2, p0, Lcom/twitter/android/PostActivity;->C:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/twitter/android/PostActivity;->C:I

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/twitter/android/PostActivity;->B:I

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->e()V

    return-void
.end method

.method final b()V
    .locals 10

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/PostActivity;->G:Z

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->c:Lcom/twitter/android/b;

    invoke-virtual {v0}, Lcom/twitter/android/b;->a()Landroid/location/Location;

    move-result-object v6

    iget-wide v2, p0, Lcom/twitter/android/PostActivity;->g:J

    const-wide/16 v7, 0x0

    cmp-long v0, v2, v7

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->u:Lcom/twitter/android/client/i;

    iget-wide v2, p0, Lcom/twitter/android/PostActivity;->g:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/client/i;->k(J)V

    :cond_0
    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->u:Lcom/twitter/android/client/i;

    iget-wide v2, p0, Lcom/twitter/android/PostActivity;->r:J

    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    iget-object v8, p0, Lcom/twitter/android/PostActivity;->x:Ljava/lang/String;

    iget-object v9, p0, Lcom/twitter/android/PostActivity;->e:Lcom/twitter/android/ca;

    invoke-virtual {v9}, Lcom/twitter/android/ca;->a()Laz;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, Lcom/twitter/android/client/i;->a(Ljava/lang/String;JDDLjava/lang/String;Laz;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->b(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_2

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->finish()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->u:Lcom/twitter/android/client/i;

    iget-wide v2, p0, Lcom/twitter/android/PostActivity;->r:J

    iget-object v8, p0, Lcom/twitter/android/PostActivity;->x:Ljava/lang/String;

    iget-object v6, p0, Lcom/twitter/android/PostActivity;->e:Lcom/twitter/android/ca;

    invoke-virtual {v6}, Lcom/twitter/android/ca;->a()Laz;

    move-result-object v9

    move-wide v6, v4

    invoke-virtual/range {v0 .. v9}, Lcom/twitter/android/client/i;->a(Ljava/lang/String;JDDLjava/lang/String;Laz;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "home"

    invoke-super {p0, v0}, Lcom/twitter/android/TwitterActivity;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final b(I)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->c:Lcom/twitter/android/b;

    invoke-virtual {v0, p1}, Lcom/twitter/android/b;->a(I)Lcom/twitter/android/e;

    return-void
.end method

.method final b(Z)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->d:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getInputType()I

    move-result v0

    if-eqz p1, :cond_0

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/twitter/android/PostActivity;->d:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/MultiAutoCompleteTextView;->setRawInputType(I)V

    return-void

    :cond_0
    const v1, -0x10001

    and-int/2addr v0, v1

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method final c()V
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->m:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const-string v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->m:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->q:Lcom/twitter/android/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twitter/android/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/c;-><init>(Lcom/twitter/android/PostActivity;Lcom/twitter/android/dm;)V

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->q:Lcom/twitter/android/c;

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->n:Lcom/twitter/android/er;

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->q:Lcom/twitter/android/c;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/er;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method final d()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->m:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->m:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->m:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->q:Lcom/twitter/android/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->n:Lcom/twitter/android/er;

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->q:Lcom/twitter/android/c;

    invoke-virtual {v0, v1}, Lcom/twitter/android/er;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method final e()V
    .locals 6

    const/16 v5, 0x8c

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/twitter/android/PostActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->e:Lcom/twitter/android/ca;

    invoke-virtual {v1}, Lcom/twitter/android/ca;->getCount()I

    move-result v1

    if-lez v0, :cond_1

    iget v2, p0, Lcom/twitter/android/PostActivity;->B:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/twitter/android/PostActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v2, v3}, Lcom/twitter/android/client/i;->a(Z)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/PostActivity;->k:Landroid/widget/TextView;

    sub-int v2, v5, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->h:Landroid/widget/Button;

    if-eqz v0, :cond_2

    if-gt v0, v5, :cond_2

    move v0, v4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_1
    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/twitter/android/PostActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v2, v3}, Lcom/twitter/android/client/i;->a(Z)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public final f()Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/twitter/android/PostActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/twitter/android/PostActivity;->e:Lcom/twitter/android/ca;

    invoke-virtual {v2}, Lcom/twitter/android/ca;->getCount()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->e:Lcom/twitter/android/ca;

    invoke-virtual {v0, v3}, Lcom/twitter/android/ca;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/bt;

    iget-object v0, v0, Lcom/twitter/android/bt;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const-wide/16 v2, 0x0

    const/16 v7, 0x20

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/twitter/android/TwitterActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->c:Lcom/twitter/android/b;

    invoke-virtual {v1, v0}, Lcom/twitter/android/b;->a(Landroid/net/Uri;)Lcom/twitter/android/e;

    move-result-object v1

    if-eqz v1, :cond_4

    const v0, 0x7f09009a

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    if-eqz p3, :cond_0

    const-string v0, "username"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x8c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/twitter/android/PostActivity;->d:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/MultiAutoCompleteTextView;->getSelectionStart()I

    move-result v2

    new-array v3, v5, [C

    if-lez v2, :cond_2

    iget-object v4, p0, Lcom/twitter/android/PostActivity;->d:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    sub-int v5, v2, v5

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/text/Editable;->getChars(II[CI)V

    aget-char v3, v3, v6

    if-eq v3, v7, :cond_2

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->d:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a(Landroid/net/Uri;)Lcom/twitter/android/bt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a(Lcom/twitter/android/bt;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/twitter/android/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/j;-><init>(Lcom/twitter/android/PostActivity;Lcom/twitter/android/dm;)V

    new-array v1, v5, [Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "camera-t.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/twitter/android/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :pswitch_3
    packed-switch p2, :pswitch_data_1

    :pswitch_4
    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->e:Lcom/twitter/android/ca;

    invoke-virtual {v0}, Lcom/twitter/android/ca;->clear()V

    iput v6, p0, Lcom/twitter/android/PostActivity;->A:I

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->d:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/twitter/android/PostActivity;->g()V

    const-string v0, "draft_id"

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/PostActivity;->g:J

    const-string v0, "android.intent.extra.UID"

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/PostActivity;->r:J

    const-string v0, "entities"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Laz;

    if-eqz v0, :cond_0

    iget-object v1, v0, Laz;->d:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, v0, Laz;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldi;

    iget-object v0, v0, Ldi;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a(Landroid/net/Uri;)Lcom/twitter/android/bt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a(Lcom/twitter/android/bt;)V

    goto :goto_2

    :pswitch_6
    const-string v0, "home"

    invoke-super {p0, v0}, Lcom/twitter/android/TwitterActivity;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    invoke-direct {p0}, Lcom/twitter/android/PostActivity;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/twitter/android/TwitterActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public final onClickHandler(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-boolean v0, p0, Lcom/twitter/android/PostActivity;->s:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a(Z)V

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->d()V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->c:Lcom/twitter/android/b;

    invoke-virtual {v0}, Lcom/twitter/android/b;->b()Lcom/twitter/android/bk;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->c:Lcom/twitter/android/b;

    invoke-virtual {v1, v0}, Lcom/twitter/android/b;->b(Lcom/twitter/android/e;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/twitter/android/PostActivity;->b:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/twitter/android/PostActivity;->a(Z)V

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->c()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/twitter/android/PostActivity;->showDialog(I)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "vnd.android.cursor.dir/image"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/twitter/android/PostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "camera-t.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-boolean v2, Lcom/twitter/android/PostActivity;->a:Z

    if-eqz v2, :cond_3

    const-string v2, "PostActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Capture photo to file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v2, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/PostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/UsersActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.twitter.android.pick_multiple"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/PostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/DraftsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v2}, Lcom/twitter/android/PostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/bt;

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->e:Lcom/twitter/android/ca;

    invoke-virtual {v1, v0}, Lcom/twitter/android/ca;->remove(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->c:Lcom/twitter/android/b;

    invoke-virtual {v1, v0}, Lcom/twitter/android/b;->b(Lcom/twitter/android/e;)V

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->e()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0004 -> :sswitch_5
        0x7f0e0021 -> :sswitch_4
        0x7f0e0052 -> :sswitch_3
        0x7f0e0053 -> :sswitch_2
        0x7f0e0054 -> :sswitch_1
        0x7f0e0055 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    const v0, 0x7f030020

    invoke-super {p0, p1, v0}, Lcom/twitter/android/TwitterActivity;->a(Landroid/os/Bundle;I)V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v7}, Lcom/twitter/android/PostActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->p:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->p:Landroid/content/SharedPreferences;

    const-string v1, "url_hints"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/PostActivity;->C:I

    iget v0, p0, Lcom/twitter/android/PostActivity;->C:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_4

    move v0, v8

    :goto_1
    iput-boolean v0, p0, Lcom/twitter/android/PostActivity;->D:Z

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->w:Lcom/twitter/android/widget/Navbar;

    const v0, 0x7f09008e

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->z:Ljava/lang/String;

    const v0, 0x7f0e001d

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->k:Landroid/widget/TextView;

    const v0, 0x7f0e001c

    invoke-virtual {v1, v0}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->h:Landroid/widget/Button;

    const v1, 0x7f09008d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const v0, 0x7f0e0055

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->l:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->k:Landroid/widget/TextView;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->z:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/twitter/android/do;

    sget-object v1, Lcom/twitter/android/provider/aa;->h:Landroid/net/Uri;

    iget-object v3, p0, Lcom/twitter/android/PostActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v3}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/twitter/android/PostActivity;->u:Lcom/twitter/android/client/i;

    invoke-direct {v0, p0, v1, v3}, Lcom/twitter/android/do;-><init>(Landroid/app/Activity;Landroid/net/Uri;Lcom/twitter/android/client/i;)V

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->o:Lcom/twitter/android/do;

    new-instance v0, Lcom/twitter/android/ca;

    invoke-direct {v0, p0}, Lcom/twitter/android/ca;-><init>(Lcom/twitter/android/PostActivity;)V

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->e:Lcom/twitter/android/ca;

    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030007

    invoke-virtual {v1, v3, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v3, p0, Lcom/twitter/android/PostActivity;->e:Lcom/twitter/android/ca;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0e0020

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {}, Lcom/twitter/android/g;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/MultiAutoCompleteTextView;->setEditableFactory(Landroid/text/Editable$Factory;)V

    invoke-virtual {v0, p0}, Landroid/widget/MultiAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v3, Lcom/twitter/android/dm;

    invoke-direct {v3, p0}, Lcom/twitter/android/dm;-><init>(Lcom/twitter/android/PostActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/MultiAutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-static {}, Lcom/twitter/android/k;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/MultiAutoCompleteTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v3, p0, Lcom/twitter/android/PostActivity;->o:Lcom/twitter/android/do;

    invoke-virtual {v0, v3}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v3, Lcom/twitter/android/be;

    invoke-direct {v3, p0, v2}, Lcom/twitter/android/be;-><init>(Lcom/twitter/android/PostActivity;Lcom/twitter/android/dm;)V

    invoke-virtual {v0, v3}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->d:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {p0, v7}, Lcom/twitter/android/PostActivity;->b(Z)V

    const v0, 0x7f0e0021

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->f:Landroid/widget/Button;

    const v0, 0x7f0e001e

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->i:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->i:Landroid/widget/RelativeLayout;

    const v1, 0x7f0e001f

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/TweetView;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->j:Lcom/twitter/android/widget/TweetView;

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->j:Lcom/twitter/android/widget/TweetView;

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v0, v1}, Lcom/twitter/android/widget/TweetView;->a(Lcom/twitter/android/widget/a;)V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->e()Lcom/twitter/android/client/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/n;->i()Lbv;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-boolean v0, v0, Lbv;->a:Z

    if-eqz v0, :cond_5

    move v0, v8

    :goto_2
    iput-boolean v0, p0, Lcom/twitter/android/PostActivity;->b:Z

    if-eqz p1, :cond_7

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/b;

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->c:Lcom/twitter/android/b;

    sget-boolean v0, Lcom/twitter/android/PostActivity;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "PostActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restored storage: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/twitter/android/PostActivity;->c:Lcom/twitter/android/b;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "loc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v0, "mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/PostActivity;->A:I

    const-string v0, "do_post"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/PostActivity;->G:Z

    const-string v0, "dialog_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->y:Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->c:Lcom/twitter/android/b;

    invoke-virtual {v0}, Lcom/twitter/android/b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/e;

    sget-boolean v4, Lcom/twitter/android/PostActivity;->a:Z

    if-eqz v4, :cond_2

    const-string v4, "PostActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored storage of type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/twitter/android/e;->a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Lcom/twitter/android/e;->a()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    check-cast v0, Lcom/twitter/android/bt;

    sget-boolean v4, Lcom/twitter/android/PostActivity;->a:Z

    if-eqz v4, :cond_3

    const-string v4, "PostActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restoring media item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/twitter/android/bt;->d:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a(Lcom/twitter/android/bt;)V

    goto :goto_3

    :cond_4
    move v0, v7

    goto/16 :goto_1

    :cond_5
    move v0, v7

    goto/16 :goto_2

    :cond_6
    move v0, v1

    :goto_4
    new-instance v1, Lcom/twitter/android/er;

    invoke-direct {v1, p0, p0}, Lcom/twitter/android/er;-><init>(Lcom/twitter/android/PostActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/twitter/android/PostActivity;->n:Lcom/twitter/android/er;

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->a(Z)V

    invoke-direct {p0}, Lcom/twitter/android/PostActivity;->g()V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->n:Lcom/twitter/android/er;

    const/4 v1, 0x2

    sget-object v3, Lcom/twitter/android/provider/ai;->l:Landroid/net/Uri;

    iget-object v4, p0, Lcom/twitter/android/PostActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v4}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v7

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/er;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/twitter/android/service/l;->m:Lcom/twitter/android/service/l;

    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/l;)V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Lcom/twitter/android/b;

    invoke-direct {v0}, Lcom/twitter/android/b;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/PostActivity;->c:Lcom/twitter/android/b;

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->p:Landroid/content/SharedPreferences;

    const-string v1, "location_enabled"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v7, p0, Lcom/twitter/android/PostActivity;->G:Z

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    iput v7, p0, Lcom/twitter/android/PostActivity;->A:I

    goto :goto_4

    :cond_8
    const-string v3, "com.twitter.android.post.status"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iput v7, p0, Lcom/twitter/android/PostActivity;->A:I

    goto :goto_4

    :cond_9
    const-string v3, "com.twitter.android.post.reply"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iput v8, p0, Lcom/twitter/android/PostActivity;->A:I

    goto :goto_4

    :cond_a
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iput v7, p0, Lcom/twitter/android/PostActivity;->A:I

    goto :goto_4

    :cond_b
    const-string v3, "com.twitter.android.post.quote"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iput v7, p0, Lcom/twitter/android/PostActivity;->A:I

    goto :goto_4

    :cond_c
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iput v7, p0, Lcom/twitter/android/PostActivity;->A:I

    goto/16 :goto_4

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const v5, 0x7f0900a3

    const v4, 0x108009b

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v0, v3

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/twitter/android/dl;

    invoke-direct {v0, p0}, Lcom/twitter/android/dl;-><init>(Lcom/twitter/android/PostActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/twitter/android/PostActivity;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090098

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900a4

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900a5

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/twitter/android/dq;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/dq;-><init>(Lcom/twitter/android/PostActivity;I)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/twitter/android/PostActivity;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900d3

    invoke-virtual {p0, v2}, Lcom/twitter/android/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900c9

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900ca

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/twitter/android/dp;

    invoke-direct {v0, p0}, Lcom/twitter/android/dp;-><init>(Lcom/twitter/android/PostActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090111

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090112

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090113

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/twitter/android/TwitterActivity;->onDestroy()V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->p:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "url_hints"

    iget v2, p0, Lcom/twitter/android/PostActivity;->C:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "location_enabled"

    iget-boolean v2, p0, Lcom/twitter/android/PostActivity;->s:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->E:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    sget-boolean v0, Lcom/twitter/android/PostActivity;->a:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "PostActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->c:Lcom/twitter/android/b;

    invoke-virtual {v0}, Lcom/twitter/android/b;->b()Lcom/twitter/android/bk;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/twitter/android/bk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/android/bk;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->c:Lcom/twitter/android/b;

    invoke-virtual {v1, v0}, Lcom/twitter/android/b;->a(Lcom/twitter/android/e;)V

    :cond_1
    iget-object v1, v0, Lcom/twitter/android/bk;->d:Landroid/location/Location;

    if-eqz p1, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    :cond_2
    invoke-virtual {v0, p1}, Lcom/twitter/android/bk;->a(Landroid/location/Location;)V

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_3

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->d()V

    :cond_3
    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/TwitterActivity;->onPause()V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v0, p0}, Lcom/twitter/android/client/i;->b(Lan;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/PostActivity;->removeDialog(I)V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->z:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->z:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/PostActivity;->z:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Lcom/twitter/android/TwitterActivity;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "photo_service"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/PostActivity;->F:I

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->u:Lcom/twitter/android/client/i;

    invoke-virtual {v0, p0}, Lcom/twitter/android/client/i;->a(Lan;)V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->d:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/MultiAutoCompleteTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/al;

    invoke-virtual {v0, p0}, Lcom/twitter/android/al;->a(Lcom/twitter/android/bi;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/twitter/android/TwitterActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "data"

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->c:Lcom/twitter/android/b;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "mode"

    iget v1, p0, Lcom/twitter/android/PostActivity;->A:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "loc"

    iget-boolean v1, p0, Lcom/twitter/android/PostActivity;->s:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "do_post"

    iget-boolean v1, p0, Lcom/twitter/android/PostActivity;->G:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/twitter/android/PostActivity;->y:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "dialog_text"

    iget-object v1, p0, Lcom/twitter/android/PostActivity;->y:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/TwitterActivity;->onStart()V

    iget-boolean v0, p0, Lcom/twitter/android/PostActivity;->s:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/PostActivity;->G:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->c()V

    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/twitter/android/TwitterActivity;->onStop()V

    invoke-virtual {p0}, Lcom/twitter/android/PostActivity;->d()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    const/16 v4, 0x40

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-lez p4, :cond_0

    sub-int v0, p4, v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne p4, v2, :cond_1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_1

    invoke-virtual {p0, v2}, Lcom/twitter/android/PostActivity;->b(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0x2f

    if-le v0, v1, :cond_2

    const/16 v1, 0x3a

    if-lt v0, v1, :cond_5

    :cond_2
    if-le v0, v4, :cond_3

    const/16 v1, 0x5b

    if-lt v0, v1, :cond_5

    :cond_3
    const/16 v1, 0x60

    if-le v0, v1, :cond_4

    const/16 v1, 0x7a

    if-lt v0, v1, :cond_5

    :cond_4
    const/16 v1, 0x5f

    if-ne v0, v1, :cond_0

    :cond_5
    invoke-virtual {p0, v3}, Lcom/twitter/android/PostActivity;->b(Z)V

    goto :goto_0
.end method
