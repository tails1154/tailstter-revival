.class public Lcom/twitter/android/TwitterListActivity;
.super Landroid/app/ListActivity;

# interfaces
.implements Lan;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/twitter/android/widget/f;
.implements Lcom/twitter/android/widget/h;


# instance fields
.field private a:Z

.field private b:Landroid/app/Activity;

.field private c:I

.field private d:I

.field private e:Landroid/view/View;

.field f:Z

.field g:Z

.field protected h:Lcom/twitter/android/client/i;

.field protected i:Lcom/twitter/android/client/m;

.field protected j:Landroid/widget/CursorAdapter;

.field protected k:Lcom/twitter/android/widget/Navbar;

.field protected l:I

.field protected m:Z

.field private n:Landroid/view/View;

.field private o:Landroid/widget/ProgressBar;

.field private p:Landroid/widget/TextView;

.field private q:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private b(Z)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/TwitterListActivity;->e:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method protected a(JIZ)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/os/Bundle;IZZ)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, p2}, Lcom/twitter/android/TwitterListActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/twitter/android/client/i;->a(Landroid/content/Context;)Lcom/twitter/android/client/i;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/TwitterListActivity;->h:Lcom/twitter/android/client/i;

    iput-boolean p4, p0, Lcom/twitter/android/TwitterListActivity;->a:Z

    iget-boolean v1, p0, Lcom/twitter/android/TwitterListActivity;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/twitter/android/TwitterListActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v1}, Lcom/twitter/android/client/i;->f()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/twitter/android/StartActivity;->a(Landroid/app/Activity;Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/twitter/android/TwitterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0e0038

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/TwitterListActivity;->n:Landroid/view/View;

    const v1, 0x7f0e0039

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/twitter/android/TwitterListActivity;->o:Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/twitter/android/TwitterListActivity;->e:Landroid/view/View;

    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/TwitterListActivity;->b:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    if-eqz p3, :cond_2

    move-object v0, v2

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    move-object v1, v0

    invoke-virtual {v1, p0}, Lcom/twitter/android/widget/RefreshableListView;->a(Lcom/twitter/android/widget/h;)V

    :cond_2
    iput-boolean p3, p0, Lcom/twitter/android/TwitterListActivity;->g:Z

    if-eqz p1, :cond_4

    const-string v1, "scroll_pos"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/TwitterListActivity;->c:I

    const-string v1, "scroll_off"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/TwitterListActivity;->d:I

    const-string v1, "pending_reqs"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/TwitterListActivity;->q:Ljava/util/ArrayList;

    :goto_1
    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    :goto_2
    iget-object v1, p0, Lcom/twitter/android/TwitterListActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v1, p0}, Lcom/twitter/android/client/i;->a(Lan;)V

    const v1, 0x7f0e0019

    invoke-virtual {p0, v1}, Lcom/twitter/android/TwitterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/widget/Navbar;

    iget-object v2, p0, Lcom/twitter/android/TwitterListActivity;->b:Landroid/app/Activity;

    if-nez v2, :cond_7

    if-eqz v1, :cond_3

    invoke-virtual {v1, p0}, Lcom/twitter/android/widget/Navbar;->a(Lcom/twitter/android/widget/f;)V

    invoke-virtual {v1, v4}, Lcom/twitter/android/widget/Navbar;->setVisibility(I)V

    const v2, 0x7f0e001a

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/Navbar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/twitter/android/TwitterListActivity;->p:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/twitter/android/TwitterListActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v2}, Lcom/twitter/android/client/i;->f()Z

    move-result v2

    if-nez v2, :cond_3

    new-array v2, v5, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v6, v2}, Lcom/twitter/android/widget/Navbar;->a(I[I)V

    :cond_3
    :goto_3
    iput-object v1, p0, Lcom/twitter/android/TwitterListActivity;->k:Lcom/twitter/android/widget/Navbar;

    goto/16 :goto_0

    :cond_4
    iput v4, p0, Lcom/twitter/android/TwitterListActivity;->c:I

    iput v4, p0, Lcom/twitter/android/TwitterListActivity;->d:I

    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/twitter/android/TwitterListActivity;->q:Ljava/util/ArrayList;

    goto :goto_1

    :cond_5
    const-string v3, "com.twitter.android.pick_multiple"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_3

    invoke-virtual {v1, v6}, Lcom/twitter/android/widget/Navbar;->setVisibility(I)V

    goto :goto_3

    nop

    :array_0
    .array-data 4
        0x7f0e001c
        0x7f0e003d
    .end array-data
.end method

.method protected final a(Landroid/os/Bundle;Z)V
    .locals 2

    const v0, 0x7f030016

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/twitter/android/TwitterListActivity;->a(Landroid/os/Bundle;IZZ)V

    return-void
.end method

.method protected final a(Landroid/os/Bundle;ZZ)V
    .locals 1

    const v0, 0x7f030016

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/twitter/android/TwitterListActivity;->a(Landroid/os/Bundle;IZZ)V

    return-void
.end method

.method public a(Ldk;Ljava/util/HashMap;)V
    .locals 2

    iget v0, p0, Lcom/twitter/android/TwitterListActivity;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/TwitterListActivity;->m:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/TwitterListActivity;->m:Z

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->q:Ljava/util/ArrayList;

    new-instance v1, Lcom/twitter/android/cj;

    invoke-direct {v1, p1, p2}, Lcom/twitter/android/cj;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->a_()V

    :cond_0
    return-void
.end method

.method protected a_()V
    .locals 0

    return-void
.end method

.method public a_(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TwitterListActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->onSearchRequested()Z

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/PostActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.twitter.android.post.status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/TwitterListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e001a -> :sswitch_0
        0x7f0e001c -> :sswitch_2
        0x7f0e003d -> :sswitch_1
    .end sparse-switch
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->b:Landroid/app/Activity;

    if-nez v0, :cond_0

    move-object v0, p0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/twitter/android/HomeTabActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_1

    const-string v2, "tab"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/twitter/android/TwitterListActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected b_(I)V
    .locals 2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/twitter/android/TwitterListActivity;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p0

    check-cast p0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/RefreshableListView;->a(Z)V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/twitter/android/TwitterListActivity;->g:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/twitter/android/TwitterListActivity;->f:Z

    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView;->a()V

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/i;->d(I)I

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/twitter/android/TwitterListActivity;->b(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final c(J)I
    .locals 4

    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->d()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/twitter/android/TwitterListActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->j:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected c_()V
    .locals 3

    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/TwitterListActivity;->c:I

    iget v2, p0, Lcom/twitter/android/TwitterListActivity;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method

.method protected d()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected d(I)V
    .locals 2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/twitter/android/TwitterListActivity;->b(Z)V

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/twitter/android/TwitterListActivity;->g:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/twitter/android/TwitterListActivity;->f:Z

    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView;->b()V

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->h:Lcom/twitter/android/client/i;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/i;->d(I)I

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/twitter/android/TwitterListActivity;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p0

    check-cast p0, Lcom/twitter/android/widget/RefreshableListView;

    invoke-virtual {p0, v1}, Lcom/twitter/android/widget/RefreshableListView;->a(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->q:Ljava/util/ArrayList;

    new-instance v1, Lcom/twitter/android/cj;

    invoke-direct {v1, p1}, Lcom/twitter/android/cj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final e(Ljava/lang/String;)Lcom/twitter/android/cj;
    .locals 4

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->q:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/twitter/android/cj;

    iget-object v3, p0, Lcom/twitter/android/cj;->a:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/twitter/android/cj;

    move-object v0, p0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected final e()Z
    .locals 1

    invoke-super {p0}, Landroid/app/ListActivity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method protected final e(I)Z
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/twitter/android/cj;

    iget v1, p0, Lcom/twitter/android/cj;->b:I

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final f()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TwitterListActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected final f(I)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->p:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/twitter/android/TwitterListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected final g()Z
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->h:Lcom/twitter/android/client/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/i;->d(I)I

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->h:Lcom/twitter/android/client/i;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/i;->d(I)I

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->j:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must call the multiple parameter versions of this method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0f0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->h:Lcom/twitter/android/client/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0, p0}, Lcom/twitter/android/client/i;->b(Lan;)V

    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TwitterListActivity;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0e00a0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->h:Lcom/twitter/android/client/i;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/TwitterListActivity;->i:Lcom/twitter/android/client/m;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/twitter/android/TwitterListActivity;->i:Lcom/twitter/android/client/m;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/i;->b(Lcom/twitter/android/client/m;)V

    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f0e00a0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getChoiceMode()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    invoke-static {p0}, Lcom/twitter/android/client/i;->a(Landroid/content/Context;)Lcom/twitter/android/client/i;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/TwitterListActivity;->h:Lcom/twitter/android/client/i;

    iget-boolean v0, p0, Lcom/twitter/android/TwitterListActivity;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->h:Lcom/twitter/android/client/i;

    invoke-virtual {v0}, Lcom/twitter/android/client/i;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/twitter/android/StartActivity;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->i:Lcom/twitter/android/client/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->h:Lcom/twitter/android/client/i;

    iget-object v1, p0, Lcom/twitter/android/TwitterListActivity;->i:Lcom/twitter/android/client/m;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/i;->a(Lcom/twitter/android/client/m;)V

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/cj;

    iget-object v2, p0, Lcom/twitter/android/TwitterListActivity;->h:Lcom/twitter/android/client/i;

    iget-object v3, v0, Lcom/twitter/android/cj;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/twitter/android/client/i;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v0, v0, Lcom/twitter/android/cj;->b:I

    invoke-virtual {p0, v0}, Lcom/twitter/android/TwitterListActivity;->b_(I)V

    :goto_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget v2, v0, Lcom/twitter/android/cj;->b:I

    invoke-virtual {p0, v2}, Lcom/twitter/android/TwitterListActivity;->d(I)V

    iget-object v2, p0, Lcom/twitter/android/TwitterListActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->c_()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "pending_reqs"

    iget-object v1, p0, Lcom/twitter/android/TwitterListActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    iput v1, p0, Lcom/twitter/android/TwitterListActivity;->c:I

    iput v0, p0, Lcom/twitter/android/TwitterListActivity;->d:I

    const-string v0, "scroll_pos"

    iget v1, p0, Lcom/twitter/android/TwitterListActivity;->c:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "scroll_off"

    iget v1, p0, Lcom/twitter/android/TwitterListActivity;->d:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/f;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/twitter/android/f;->a(Z)V

    :cond_2
    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->j:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_0

    add-int v0, p2, p3

    if-lt v0, p4, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/TwitterListActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/twitter/android/TwitterListActivity;->a(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iput p2, p0, Lcom/twitter/android/TwitterListActivity;->l:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/TwitterListActivity;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twitter/android/TwitterListActivity;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/TwitterListActivity;->m:Z

    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/android/TwitterListActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0
.end method
