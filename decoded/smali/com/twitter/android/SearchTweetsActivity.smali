.class public Lcom/twitter/android/SearchTweetsActivity;
.super Lcom/twitter/android/TweetListActivity;

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field a:Lcom/twitter/android/cg;

.field b:I

.field c:Ljava/lang/String;

.field d:Landroid/widget/ImageView;

.field private n:Landroid/database/ContentObserver;

.field private o:Z

.field private p:Landroid/location/Location;

.field private q:Lal;

.field private r:Ljava/lang/String;

.field private s:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/TweetListActivity;-><init>()V

    return-void
.end method

.method private a(Landroid/location/Location;Lal;)V
    .locals 6

    const/16 v5, 0x2c

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const v3, 0x7f0d0002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v2, v0}, Lt;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsActivity;->h:Lcom/twitter/android/client/i;

    iget-object v2, v2, Lcom/twitter/android/client/i;->a:Lbe;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lbe;->a(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void

    :cond_2
    if-eqz p2, :cond_1

    iget-object v0, p2, Lal;->b:Ljava/lang/String;

    invoke-static {v0}, Lci;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lal;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "&path=color:0x00000000%7Cfillcolor:0xAA000033"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lal;->c:Ljava/lang/String;

    invoke-static {v0}, Ldb;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    const-string v3, "%7C"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private k()V
    .locals 1

    iget-boolean v0, p0, Lcom/twitter/android/SearchTweetsActivity;->o:Z

    if-eqz v0, :cond_0

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/SearchTweetsActivity;->o:Z

    :cond_0
    return-void
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->d:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03001b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->d:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->d(I)V

    :cond_0
    return-void
.end method

.method protected final a(Landroid/database/Cursor;)V
    .locals 4

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->g(I)V

    :cond_0
    return-void
.end method

.method protected final a_()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->g(I)V

    return-void
.end method

.method protected final c(I)Lcom/twitter/android/provider/ah;
    .locals 2

    new-instance v0, Lcom/twitter/android/provider/aj;

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    invoke-direct {v0, p0}, Lcom/twitter/android/provider/aj;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

.method protected final c()V
    .locals 0

    iget-object p0, p0, Lcom/twitter/android/SearchTweetsActivity;->j:Landroid/widget/CursorAdapter;

    check-cast p0, Lcom/twitter/android/bp;

    invoke-virtual {p0}, Lcom/twitter/android/bp;->a()V

    return-void
.end method

.method protected final d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final g(I)V
    .locals 18

    invoke-virtual/range {p0 .. p1}, Lcom/twitter/android/SearchTweetsActivity;->e(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/twitter/android/SearchTweetsActivity;->o:Z

    move v3, v0

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/SearchTweetsActivity;->p:Landroid/location/Location;

    move-object v3, v0

    if-eqz v3, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/SearchTweetsActivity;->q:Lal;

    move-object v3, v0

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/SearchTweetsActivity;->p:Landroid/location/Location;

    move-object v3, v0

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/SearchTweetsActivity;->p:Landroid/location/Location;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/SearchTweetsActivity;->p:Landroid/location/Location;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "5mi"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/SearchTweetsActivity;->r:Ljava/lang/String;

    move-object v4, v0

    packed-switch p1, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid fetch type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    const/4 v3, 0x0

    move-object v12, v3

    goto :goto_1

    :pswitch_0
    const/4 v3, 0x1

    move v14, v3

    :goto_2
    invoke-virtual/range {p0 .. p1}, Lcom/twitter/android/SearchTweetsActivity;->b_(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/SearchTweetsActivity;->h:Lcom/twitter/android/client/i;

    move-object v3, v0

    packed-switch p1, :pswitch_data_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid fetch type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    const/4 v3, 0x0

    move v14, v3

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/twitter/android/SearchTweetsActivity;->b:I

    move v3, v0

    move v14, v3

    goto :goto_2

    :pswitch_3
    const-wide/16 v5, 0x0

    move-wide v6, v5

    :goto_3
    const/16 v8, 0x64

    packed-switch p1, :pswitch_data_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid fetch type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/SearchTweetsActivity;->j:Landroid/widget/CursorAdapter;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-wide v6, v5

    goto :goto_3

    :cond_4
    const-wide/16 v5, 0x0

    move-wide v6, v5

    goto :goto_3

    :cond_5
    const-wide/16 v5, 0x0

    move-wide v6, v5

    goto :goto_3

    :pswitch_5
    const-wide/16 v5, 0x0

    move-wide v6, v5

    goto :goto_3

    :pswitch_6
    const-wide/16 v9, 0x0

    :goto_4
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/SearchTweetsActivity;->c:Ljava/lang/String;

    move-object v13, v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/twitter/android/SearchTweetsActivity;->s:I

    move/from16 v17, v0

    move-object v5, v4

    invoke-virtual/range {v3 .. v17}, Lcom/twitter/android/client/i;->a(Ljava/lang/String;Ljava/lang/String;JIJZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/SearchTweetsActivity;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :pswitch_7
    const-wide/16 v9, 0x0

    goto :goto_4

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/twitter/android/SearchTweetsActivity;->j:Landroid/widget/CursorAdapter;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/database/Cursor;->moveToLast()Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    goto :goto_4

    :cond_6
    const-wide/16 v9, 0x0

    goto :goto_4

    :cond_7
    const-wide/16 v9, 0x0

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v0, 0x7f030016

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, v5}, Lcom/twitter/android/SearchTweetsActivity;->a(Landroid/os/Bundle;IZZ)V

    new-instance v0, Lcom/twitter/android/bp;

    invoke-direct {v0, p0}, Lcom/twitter/android/bp;-><init>(Lcom/twitter/android/SearchTweetsActivity;)V

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->j:Landroid/widget/CursorAdapter;

    new-instance v0, Lcom/twitter/android/cq;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/cq;-><init>(Lcom/twitter/android/SearchTweetsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->n:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "query"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "type"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/SearchTweetsActivity;->s:I

    const-string v0, "nearby"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/SearchTweetsActivity;->o:Z

    new-instance v0, Lcom/twitter/android/cg;

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v0, p0, v5}, Lcom/twitter/android/cg;-><init>(Lcom/twitter/android/TwitterListActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->a:Lcom/twitter/android/cg;

    new-instance v0, Lcom/twitter/android/aw;

    invoke-direct {v0, p0, v7}, Lcom/twitter/android/aw;-><init>(Lcom/twitter/android/SearchTweetsActivity;Lcom/twitter/android/cq;)V

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->i:Lcom/twitter/android/client/m;

    iget-boolean v0, p0, Lcom/twitter/android/SearchTweetsActivity;->o:Z

    if-eqz v0, :cond_2

    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const-string v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    invoke-direct {p0}, Lcom/twitter/android/SearchTweetsActivity;->l()V

    move-object v0, v7

    move-object v1, v6

    :goto_0
    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    iput-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->r:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_2
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "place"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "place"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lal;

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->q:Lal;

    const-string v2, "loc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    iget-object v2, v0, Lal;->d:Ljava/lang/String;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "place:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lal;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v3, v0, Lal;->b:Ljava/lang/String;

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    :goto_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    iput-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->p:Landroid/location/Location;

    invoke-direct {p0}, Lcom/twitter/android/SearchTweetsActivity;->l()V

    invoke-direct {p0, v1, v0}, Lcom/twitter/android/SearchTweetsActivity;->a(Landroid/location/Location;Lal;)V

    :cond_4
    move-object v0, v2

    move-object v1, v3

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    const-string v1, "latitude"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    new-instance v3, Landroid/location/Location;

    const-string v4, "gps"

    invoke-direct {v3, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->c:Ljava/lang/String;

    move-object v0, v3

    :goto_3
    move-object v1, v0

    move-object v2, v7

    move-object v3, v6

    move-object v0, v7

    goto :goto_2

    :cond_6
    const-string v0, "loc"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    move-object v1, v0

    move-object v2, v7

    move-object v3, v6

    move-object v0, v7

    goto :goto_2

    :cond_7
    move-object v0, v7

    goto :goto_3

    :cond_8
    move-object v2, v6

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/twitter/android/TweetListActivity;->onDestroy()V

    invoke-direct {p0}, Lcom/twitter/android/SearchTweetsActivity;->k()V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->p:Landroid/location/Location;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "geo:0,0?z=18&q="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->p:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->p:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->q:Lal;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->q:Lal;

    iget-object v1, v1, Lal;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/SearchTweetsActivity;->q:Lal;

    iget-object v2, v2, Lal;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/twitter/android/SearchTweetsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->q:Lal;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "geo:0,0?q="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->q:Lal;

    iget-object v1, v1, Lal;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/TweetActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/twitter/android/provider/an;->a:Landroid/net/Uri;

    invoke-static {v1, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->p:Landroid/location/Location;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/twitter/android/SearchTweetsActivity;->p:Landroid/location/Location;

    invoke-direct {p0}, Lcom/twitter/android/SearchTweetsActivity;->k()V

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/twitter/android/SearchTweetsActivity;->a(Landroid/location/Location;Lal;)V

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/i;->a(DDLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->d(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move-object v5, v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/twitter/android/TweetListActivity;->onPause()V

    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/SearchTweetsActivity;->n:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
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
    .locals 4

    invoke-super {p0}, Lcom/twitter/android/TweetListActivity;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/SearchTweetsActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/SearchTweetsActivity;->g(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/twitter/android/SearchTweetsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/twitter/android/provider/ai;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/android/SearchTweetsActivity;->n:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lcom/twitter/android/TweetListActivity;->onStart()V

    sget-object v0, Lcom/twitter/android/service/l;->c:Lcom/twitter/android/service/l;

    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/l;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
