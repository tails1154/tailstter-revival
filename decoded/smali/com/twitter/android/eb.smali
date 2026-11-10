.class final Lcom/twitter/android/eb;
.super Lcom/twitter/android/client/m;


# instance fields
.field private synthetic a:Lcom/twitter/android/SearchUsersActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/SearchUsersActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/eb;->a:Lcom/twitter/android/SearchUsersActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/SearchUsersActivity;Lcom/twitter/android/cy;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/eb;-><init>(Lcom/twitter/android/SearchUsersActivity;)V

    return-void
.end method


# virtual methods
.method public final l(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 9

    const/4 v7, 0x3

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/twitter/android/eb;->a:Lcom/twitter/android/SearchUsersActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SearchUsersActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/eb;->a:Lcom/twitter/android/SearchUsersActivity;

    iget v2, v0, Lcom/twitter/android/cj;->b:I

    invoke-virtual {v1, v2}, Lcom/twitter/android/SearchUsersActivity;->d(I)V

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_1

    iget v0, v0, Lcom/twitter/android/cj;->b:I

    if-ne v0, v7, :cond_0

    iget-object v0, p0, Lcom/twitter/android/eb;->a:Lcom/twitter/android/SearchUsersActivity;

    iget-object v0, v0, Lcom/twitter/android/SearchUsersActivity;->a:Lcom/twitter/android/cg;

    iget-object v1, p0, Lcom/twitter/android/eb;->a:Lcom/twitter/android/SearchUsersActivity;

    iget-object v1, v1, Lcom/twitter/android/SearchUsersActivity;->j:Landroid/widget/CursorAdapter;

    sget-object v2, Lcom/twitter/android/provider/aa;->d:Landroid/net/Uri;

    sget-object v3, Lcom/twitter/android/av;->a:[Ljava/lang/String;

    const-string v4, "type=? AND tag=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "_id ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/cg;->a(Landroid/widget/CursorAdapter;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/eb;->a:Lcom/twitter/android/SearchUsersActivity;

    const v1, 0x7f090049

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
