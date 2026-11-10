.class public Lcom/twitter/android/ProfileTabActivity;
.super Lcom/twitter/android/TwitterTabActivity;


# static fields
.field static final a:Z


# instance fields
.field b:J

.field c:Ljava/lang/String;

.field private g:Lcom/twitter/android/bz;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ProfileTab"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/twitter/android/ProfileTabActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/TwitterTabActivity;-><init>(Z)V

    iput v0, p0, Lcom/twitter/android/ProfileTabActivity;->h:I

    return-void
.end method


# virtual methods
.method final a()V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/twitter/android/ProfileTabActivity;->b:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    sget-object v0, Lcom/twitter/android/provider/ac;->c:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/twitter/android/ProfileTabActivity;->b:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/twitter/android/ProfileTabActivity;->g:Lcom/twitter/android/bz;

    sget-object v4, Lcom/twitter/android/eo;->a:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/bz;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/twitter/android/ProfileTabActivity;->b(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ProfileTabActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v3, Lcom/twitter/android/provider/ac;->a:Landroid/net/Uri;

    iget-object v0, p0, Lcom/twitter/android/ProfileTabActivity;->g:Lcom/twitter/android/bz;

    sget-object v4, Lcom/twitter/android/eo;->a:[Ljava/lang/String;

    const-string v5, "username=?"

    new-array v6, v1, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/twitter/android/ProfileTabActivity;->c:Ljava/lang/String;

    aput-object v8, v6, v7

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/bz;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/twitter/android/ProfileTabActivity;->b(Z)V

    goto :goto_0
.end method

.method final a(Lac;)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/twitter/android/ProfileTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/ProfileActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "user"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "type"

    invoke-virtual {p0}, Lcom/twitter/android/ProfileTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "type"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "profile"

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const v4, 0x7f02008c

    invoke-static {v1, v0, v4}, Lcom/twitter/android/ProfileTabActivity;->a(Landroid/view/LayoutInflater;Landroid/widget/TabHost;I)Lcom/twitter/android/widget/TabIndicator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/TimelineActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "owner_id"

    iget-wide v4, p1, Lac;->a:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "type"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "timeline"

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const v4, 0x7f02008f

    invoke-static {v1, v0, v4}, Lcom/twitter/android/ProfileTabActivity;->a(Landroid/view/LayoutInflater;Landroid/widget/TabHost;I)Lcom/twitter/android/widget/TabIndicator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/SearchTweetsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "query"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lac;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "type"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "mentions"

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const v4, 0x7f020085

    invoke-static {v1, v0, v4}, Lcom/twitter/android/ProfileTabActivity;->a(Landroid/view/LayoutInflater;Landroid/widget/TabHost;I)Lcom/twitter/android/widget/TabIndicator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/twitter/android/ListsActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "user_id"

    iget-wide v4, p1, Lac;->a:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "profile"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "lists"

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const v4, 0x7f020082

    invoke-static {v1, v0, v4}, Lcom/twitter/android/ProfileTabActivity;->a(Landroid/view/LayoutInflater;Landroid/widget/TabHost;I)Lcom/twitter/android/widget/TabIndicator;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget v1, p0, Lcom/twitter/android/ProfileTabActivity;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return-void
.end method

.method public final a_(I)V
    .locals 5

    const v0, 0x7f0e001c

    if-ne p1, v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/PostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.twitter.android.post.status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/ProfileTabActivity;->d:Lcom/twitter/android/client/i;

    invoke-virtual {v1}, Lcom/twitter/android/client/i;->h()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/twitter/android/ProfileTabActivity;->b:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/twitter/android/ProfileTabActivity;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/ProfileTabActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/twitter/android/ProfileTabActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/twitter/android/TwitterTabActivity;->a_(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/twitter/android/TwitterTabActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twitter/android/ProfileTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/bo;

    invoke-direct {v1, p0, v8}, Lcom/twitter/android/bo;-><init>(Lcom/twitter/android/ProfileTabActivity;Lcom/twitter/android/ae;)V

    iput-object v1, p0, Lcom/twitter/android/ProfileTabActivity;->e:Lcom/twitter/android/client/m;

    new-instance v1, Lcom/twitter/android/bz;

    invoke-direct {v1, p0, p0}, Lcom/twitter/android/bz;-><init>(Lcom/twitter/android/ProfileTabActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/twitter/android/ProfileTabActivity;->g:Lcom/twitter/android/bz;

    if-eqz p1, :cond_1

    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/android/ProfileTabActivity;->b:J

    const-string v0, "username"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileTabActivity;->c:Ljava/lang/String;

    const-string v0, "tab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/ProfileTabActivity;->h:I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/twitter/android/ProfileTabActivity;->a()V

    :goto_1
    return-void

    :cond_1
    const-string v1, "user_id"

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/twitter/android/ProfileTabActivity;->b:J

    const-string v1, "screen_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/ProfileTabActivity;->c:Ljava/lang/String;

    iput v7, p0, Lcom/twitter/android/ProfileTabActivity;->h:I

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "twitter"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "screen_name"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileTabActivity;->c:Ljava/lang/String;

    :try_start_0
    const-string v0, "user_id"

    invoke-virtual {v1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/android/ProfileTabActivity;->b:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    const-string v0, "user_timeline"

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v4, p0, Lcom/twitter/android/ProfileTabActivity;->h:I

    :cond_3
    iget-object v0, p0, Lcom/twitter/android/ProfileTabActivity;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/twitter/android/ProfileTabActivity;->b:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_0

    const v0, 0x7f090045

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/twitter/android/ProfileTabActivity;->finish()V

    goto :goto_1

    :catch_0
    move-exception v0

    sget-boolean v2, Lcom/twitter/android/ProfileTabActivity;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "ProfileTab"

    const-string v3, "not a number"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_4
    const-string v2, "com.twitter.android.action.USER_SHOW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ProfileTabActivity;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    iget-wide v2, p0, Lcom/twitter/android/ProfileTabActivity;->b:J

    cmp-long v0, v2, v5

    if-nez v0, :cond_0

    new-instance v0, Lcom/twitter/android/dk;

    invoke-direct {v0, p0, v8}, Lcom/twitter/android/dk;-><init>(Lcom/twitter/android/ProfileTabActivity;Lcom/twitter/android/ae;)V

    new-array v2, v4, [Landroid/net/Uri;

    aput-object v1, v2, v7

    invoke-virtual {v0, v2}, Lcom/twitter/android/dk;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/twitter/android/TwitterTabActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "user_id"

    iget-wide v1, p0, Lcom/twitter/android/ProfileTabActivity;->b:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "username"

    iget-object v1, p0, Lcom/twitter/android/ProfileTabActivity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twitter/android/ProfileTabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "tab"

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
