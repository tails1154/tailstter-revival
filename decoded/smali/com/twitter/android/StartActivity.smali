.class public Lcom/twitter/android/StartActivity;
.super Lcom/twitter/android/TwitterListActivity;


# instance fields
.field a:Lcom/twitter/android/cg;

.field b:Lcom/twitter/android/co;

.field c:Lcom/twitter/android/cu;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/twitter/android/TwitterListActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/StartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/StartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/twitter/android/StartActivity;->d(I)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/twitter/android/TwitterListActivity;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/twitter/android/StartActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    return-void
.end method

.method public onClickHandler(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/twitter/android/StartActivity;->onSearchRequested()Z

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {p0}, Lcom/twitter/android/StartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/StartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/SignUpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {p0}, Lcom/twitter/android/StartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/StartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0e005f -> :sswitch_0
        0x7f0e006b -> :sswitch_2
        0x7f0e006c -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/16 v6, 0x22

    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const v0, 0x7f030029

    invoke-super {p0, p1, v0, v5, v5}, Lcom/twitter/android/TwitterListActivity;->a(Landroid/os/Bundle;IZZ)V

    new-instance v0, Lcom/twitter/android/co;

    invoke-direct {v0, p0}, Lcom/twitter/android/co;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/StartActivity;->b:Lcom/twitter/android/co;

    new-instance v0, Lcom/twitter/android/cu;

    invoke-direct {v0, p0}, Lcom/twitter/android/cu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/StartActivity;->c:Lcom/twitter/android/cu;

    new-instance v0, Lcom/twitter/android/cv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/cv;-><init>(Lcom/twitter/android/StartActivity;Lcom/twitter/android/p;)V

    iput-object v0, p0, Lcom/twitter/android/StartActivity;->i:Lcom/twitter/android/client/m;

    new-instance v0, Lcom/twitter/android/cg;

    invoke-virtual {p0}, Lcom/twitter/android/StartActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/cg;-><init>(Lcom/twitter/android/TwitterListActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/twitter/android/StartActivity;->a:Lcom/twitter/android/cg;

    new-instance v0, Lcom/twitter/android/bg;

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    new-array v2, v2, [Landroid/widget/BaseAdapter;

    iget-object v3, p0, Lcom/twitter/android/StartActivity;->b:Lcom/twitter/android/co;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/twitter/android/StartActivity;->c:Lcom/twitter/android/cu;

    aput-object v3, v2, v7

    const v3, 0x7f030025

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/bg;-><init>([I[Landroid/widget/BaseAdapter;I)V

    invoke-virtual {p0}, Lcom/twitter/android/StartActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/twitter/android/StartActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-eq v2, v4, :cond_0

    if-eq v3, v4, :cond_0

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const v5, 0x7f07000f

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    sub-int v0, v3, v7

    const/16 v3, 0x21

    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v0, v4

    :goto_0
    const v1, 0x7f0e006a

    invoke-virtual {p0, v1}, Lcom/twitter/android/StartActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :array_0
    .array-data 4
        0x7f0900c5
        0x7f0900f3
    .end array-data
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/twitter/android/StartActivity;->b:Lcom/twitter/android/co;

    invoke-virtual {v1}, Lcom/twitter/android/co;->getCount()I

    move-result v1

    if-gt p3, v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/SearchTabActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "query"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "type"

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/twitter/android/StartActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/ListTabActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "screen_name"

    const v3, 0x7f090005

    invoke-virtual {p0, v3}, Lcom/twitter/android/StartActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "list_name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "slug"

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/twitter/android/StartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x3

    invoke-super {p0}, Lcom/twitter/android/TwitterListActivity;->onResume()V

    iget-object v0, p0, Lcom/twitter/android/StartActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/StartActivity;->f()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/StartActivity;->b:Lcom/twitter/android/co;

    invoke-virtual {v0}, Lcom/twitter/android/co;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/twitter/android/StartActivity;->b_(I)V

    iget-object v0, p0, Lcom/twitter/android/StartActivity;->h:Lcom/twitter/android/client/i;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/i;->j(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/twitter/android/StartActivity;->a(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/StartActivity;->c:Lcom/twitter/android/cu;

    invoke-virtual {v0}, Lcom/twitter/android/cu;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twitter/android/StartActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twitter/android/StartActivity;->d(Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/twitter/android/service/l;->z:Lcom/twitter/android/service/l;

    invoke-static {p0, v0}, Lcom/twitter/android/service/ScribeService;->a(Landroid/content/Context;Lcom/twitter/android/service/l;)V

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    invoke-virtual {p0}, Lcom/twitter/android/StartActivity;->e()Z

    move-result v0

    return v0
.end method
