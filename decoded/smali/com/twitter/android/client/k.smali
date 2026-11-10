.class public final Lcom/twitter/android/client/k;
.super Ljava/lang/Object;

# interfaces
.implements Lan;


# static fields
.field private static e:Landroid/text/style/TextAppearanceSpan;

.field private static f:I


# instance fields
.field final a:Ljava/util/List;

.field final b:Landroid/content/Context;

.field c:Z

.field d:I

.field private final g:Ldk;

.field private final h:Lcom/twitter/android/client/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/twitter/android/client/k;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldk;Lcom/twitter/android/client/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/twitter/android/client/k;->g:Ldk;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/client/k;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/twitter/android/client/k;->h:Lcom/twitter/android/client/i;

    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/high16 v7, 0x4000000

    const/4 v6, 0x0

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/twitter/android/client/WidgetLargeProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030038

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/StartActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/twitter/android/client/k;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const v4, 0x7f0e0094

    const/high16 v5, 0x10000000

    invoke-static {p0, v6, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_1
    const v3, 0x7f0e0095

    invoke-virtual {v1, v3, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x7f0e0096

    invoke-virtual {v1, v3, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/twitter/android/StartActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/twitter/android/client/k;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v4, 0x7f0e0093

    invoke-static {p0, v6, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/twitter/android/client/WidgetSmallProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030039

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f050001
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 10

    const v9, 0x7f0e009b

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/client/WidgetSmallProvider;

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f03003b

    invoke-direct {v3, v0, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/twitter/android/client/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/client/k;->a:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq;

    invoke-direct {p0, v3, v0, p1}, Lcom/twitter/android/client/k;->a(Landroid/widget/RemoteViews;Lq;Landroid/graphics/Bitmap;)V

    iget-object v4, v0, Lq;->l:Lac;

    iget-wide v4, v4, Lac;->a:J

    iget-object v6, p0, Lcom/twitter/android/client/k;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v6}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    invoke-virtual {v3, v9, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    const-class v6, Lcom/twitter/android/PostActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.twitter.android.post.reply"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lcom/twitter/android/provider/ai;->b:Landroid/net/Uri;

    iget-wide v6, v0, Lq;->a:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    const/high16 v5, 0x10000000

    invoke-static {v0, v8, v4, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v3, v9, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {v3, v9, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method

.method private a(Landroid/widget/RemoteViews;Lq;Landroid/graphics/Bitmap;)V
    .locals 11

    iget-object v0, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget-object v0, Lcom/twitter/android/client/k;->e:Landroid/text/style/TextAppearanceSpan;

    if-nez v0, :cond_0

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v3, v0

    const v0, 0x7f070008

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    sput-object v0, Lcom/twitter/android/client/k;->e:Landroid/text/style/TextAppearanceSpan;

    :cond_0
    iget-object v0, p2, Lq;->l:Lac;

    iget-object v0, v0, Lac;->f:Ljava/lang/String;

    iget-object v1, p2, Lq;->g:Ljava/lang/String;

    iget-wide v2, p2, Lq;->d:J

    iget-object v4, p2, Lq;->b:Ljava/lang/String;

    iget-wide v7, p2, Lq;->f:J

    const-wide/16 v9, -0x1

    cmp-long v5, v7, v9

    if-eqz v5, :cond_3

    invoke-static {v1}, Ldb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz v0, :cond_1

    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    sget-object v8, Lcom/twitter/android/client/k;->e:Landroid/text/style/TextAppearanceSpan;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v10, 0x21

    invoke-virtual {v7, v8, v9, v0, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    if-eqz v1, :cond_2

    const/16 v0, 0x20

    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    const v0, 0x7f0e0010

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-static {v6, v2, v3, v0}, Lci;->a(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    const v1, 0x7f0e000b

    const v2, 0x7f090043

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v3, v7

    const/4 v0, 0x1

    aput-object v4, v3, v0

    const/4 v0, 0x2

    aput-object v5, v3, v0

    invoke-virtual {v6, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_1
    if-eqz p3, :cond_7

    const v0, 0x7f0e0008

    invoke-virtual {p1, v0, p3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/TweetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/twitter/android/client/k;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/twitter/android/provider/ai;->b:Landroid/net/Uri;

    iget-wide v2, p2, Lq;->a:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const v1, 0x7f0e0098

    iget-object v2, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void

    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_4
    if-eqz v4, :cond_5

    const v1, 0x7f0e000b

    const v2, 0x7f090042

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    const/4 v0, 0x1

    aput-object v4, v3, v0

    invoke-virtual {v6, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    if-eqz v5, :cond_6

    const v1, 0x7f0e000b

    const v2, 0x7f090044

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v5, v3, v0

    invoke-virtual {v6, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    const v1, 0x7f0e000b

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    const v0, 0x7f0e0008

    const v1, 0x7f020056

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2
.end method

.method private a(Lq;Landroid/graphics/Bitmap;)V
    .locals 11

    const/4 v10, 0x4

    const/high16 v9, 0x10000000

    const v8, 0x7f0e009a

    const v7, 0x7f0e0099

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    const-class v3, Lcom/twitter/android/client/WidgetLargeProvider;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f03003a

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    const-class v5, Lcom/twitter/android/StartActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/twitter/android/client/k;->e()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const v4, 0x7f0e0094

    iget-object v5, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    invoke-static {v5, v6, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    const-class v5, Lcom/twitter/android/PostActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.twitter.android.post.status"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v4, 0x7f0e0097

    iget-object v5, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    invoke-static {v5, v6, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    if-nez p1, :cond_1

    invoke-virtual {v2, v7, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v2, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v2, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-direct {p0, v2, p1, p2}, Lcom/twitter/android/client/k;->a(Landroid/widget/RemoteViews;Lq;Landroid/graphics/Bitmap;)V

    iget v3, p0, Lcom/twitter/android/client/k;->d:I

    if-nez v3, :cond_2

    const v3, 0x7f02005a

    invoke-virtual {v2, v7, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_1
    iget v3, p0, Lcom/twitter/android/client/k;->d:I

    iget-object v4, p0, Lcom/twitter/android/client/k;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_3

    const v3, 0x7f020053

    invoke-virtual {v2, v8, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    :cond_2
    const v3, 0x7f0200d9

    invoke-virtual {v2, v7, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.twitter.android.widget.button.prev"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "sid"

    iget-object v5, p0, Lcom/twitter/android/client/k;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v5}, Lcom/twitter/android/client/i;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    invoke-static {v4, v6, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_3
    const v3, 0x7f0200d8

    invoke-virtual {v2, v8, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.twitter.android.widget.button.next"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "sid"

    iget-object v5, p0, Lcom/twitter/android/client/k;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v5}, Lcom/twitter/android/client/i;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    invoke-static {v4, v6, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto :goto_2
.end method

.method private static e()I
    .locals 1

    sget v0, Lcom/twitter/android/client/k;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/twitter/android/client/k;->f:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f090003

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/twitter/android/client/k;->g:Ldk;

    invoke-virtual {v0, p0}, Ldk;->a(Lan;)V

    iput-boolean v3, p0, Lcom/twitter/android/client/k;->c:Z

    iget-object v0, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    const v1, 0x7f050001

    iget-object v2, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v5}, Lcom/twitter/android/client/k;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    const v1, 0x7f050002

    iget-object v2, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v5}, Lcom/twitter/android/client/k;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/twitter/android/client/k;->a(Z)V

    return-void
.end method

.method public final a(I)V
    .locals 5

    const v4, 0x7f090047

    const v2, 0x7f050001

    const/4 v3, 0x0

    if-ne p1, v2, :cond_2

    iget-object v0, p0, Lcom/twitter/android/client/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/twitter/android/client/k;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/k;->a:Ljava/util/List;

    iget v1, p0, Lcom/twitter/android/client/k;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq;

    iget-object v1, v0, Lq;->l:Lac;

    iget-object v2, v1, Lac;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/twitter/android/client/k;->g:Ldk;

    iget-wide v3, v1, Lac;->a:J

    iget-object v1, v1, Lac;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Ldk;->a(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/twitter/android/client/k;->a(Lq;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/twitter/android/client/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    const v1, 0x7f050002

    iget-object v2, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lcom/twitter/android/client/k;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/client/k;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq;

    iget-object v0, v0, Lq;->l:Lac;

    iget-object v1, v0, Lac;->c:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/twitter/android/client/k;->g:Ldk;

    iget-wide v2, v0, Lac;->a:J

    iget-object v0, v0, Lac;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Ldk;->a(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    invoke-direct {p0, v0}, Lcom/twitter/android/client/k;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_4
    move-object v0, v3

    goto :goto_2
.end method

.method public final a(J)V
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/client/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq;

    iget-wide v2, v0, Lq;->a:J

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/k;->a(Z)V

    :cond_1
    return-void
.end method

.method public final a(Ldk;Ljava/util/HashMap;)V
    .locals 3

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/twitter/android/client/k;->d:I

    iget-object v1, p0, Lcom/twitter/android/client/k;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/client/k;->a:Ljava/util/List;

    iget v1, p0, Lcom/twitter/android/client/k;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq;

    iget-object v1, v0, Lq;->l:Lac;

    iget-wide v1, v1, Lac;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbf;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lbf;->a()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/client/k;->a(Lq;Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/client/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/client/k;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq;

    iget-object v0, v0, Lq;->l:Lac;

    iget-wide v0, v0, Lac;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbf;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbf;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/client/k;->a(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 2

    new-instance v0, Lcom/twitter/android/client/h;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/client/h;-><init>(Lcom/twitter/android/client/k;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final b()V
    .locals 6

    const v5, 0x7f0900b5

    const v4, 0x7f0900b4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/client/k;->c:Z

    iget-object v0, p0, Lcom/twitter/android/client/k;->g:Ldk;

    invoke-virtual {v0, p0}, Ldk;->b(Lan;)V

    iget-object v0, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    const v1, 0x7f050001

    iget-object v2, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/client/k;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    const v1, 0x7f050002

    iget-object v2, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/client/k;->b:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/twitter/android/client/k;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/client/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/twitter/android/client/k;->d:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    iget v0, p0, Lcom/twitter/android/client/k;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/android/client/k;->d:I

    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/k;->a(I)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/client/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/twitter/android/client/k;->d:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/twitter/android/client/k;->d:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/twitter/android/client/k;->d:I

    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/twitter/android/client/k;->a(I)V

    :cond_0
    return-void
.end method
