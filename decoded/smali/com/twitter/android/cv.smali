.class final Lcom/twitter/android/cv;
.super Lcom/twitter/android/client/m;


# instance fields
.field private synthetic a:Lcom/twitter/android/StartActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/StartActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/cv;->a:Lcom/twitter/android/StartActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/StartActivity;Lcom/twitter/android/p;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/cv;-><init>(Lcom/twitter/android/StartActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 7

    iget-object v0, p0, Lcom/twitter/android/cv;->a:Lcom/twitter/android/StartActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/StartActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cv;->a:Lcom/twitter/android/StartActivity;

    iget-object v0, v0, Lcom/twitter/android/StartActivity;->a:Lcom/twitter/android/cg;

    iget-object v1, p0, Lcom/twitter/android/cv;->a:Lcom/twitter/android/StartActivity;

    iget-object v1, v1, Lcom/twitter/android/StartActivity;->b:Lcom/twitter/android/co;

    sget-object v2, Lcom/twitter/android/provider/a;->a:Landroid/net/Uri;

    sget-object v3, Lcom/twitter/android/el;->a:[Ljava/lang/String;

    const-string v4, "type=1 AND latitude IS NULL AND longitude IS NULL"

    const/4 v5, 0x0

    const-string v6, "query_id DESC, time ASC"

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/cg;->a(Landroid/widget/CursorAdapter;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/twitter/android/cv;->a:Lcom/twitter/android/StartActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/StartActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_0

    if-lez p5, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cv;->a:Lcom/twitter/android/StartActivity;

    iget-object v0, v0, Lcom/twitter/android/StartActivity;->a:Lcom/twitter/android/cg;

    iget-object v1, p0, Lcom/twitter/android/cv;->a:Lcom/twitter/android/StartActivity;

    iget-object v1, v1, Lcom/twitter/android/StartActivity;->c:Lcom/twitter/android/cu;

    sget-object v2, Lcom/twitter/android/provider/a;->a:Landroid/net/Uri;

    sget-object v3, Lcom/twitter/android/cu;->a:[Ljava/lang/String;

    const-string v4, "type=7"

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/twitter/android/cg;->a(Landroid/widget/CursorAdapter;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
