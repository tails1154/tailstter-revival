.class final Lcom/twitter/android/du;
.super Lcom/twitter/android/client/m;


# instance fields
.field private synthetic a:Lcom/twitter/android/ListsActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/ListsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/du;->a:Lcom/twitter/android/ListsActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/ListsActivity;Lcom/twitter/android/bj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/du;-><init>(Lcom/twitter/android/ListsActivity;)V

    return-void
.end method


# virtual methods
.method public final d(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;JI)V
    .locals 7

    iget-object v0, p0, Lcom/twitter/android/du;->a:Lcom/twitter/android/ListsActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ListsActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/twitter/android/cj;->b:I

    iget-object v1, p0, Lcom/twitter/android/du;->a:Lcom/twitter/android/ListsActivity;

    iget v1, v1, Lcom/twitter/android/ListsActivity;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-nez p7, :cond_1

    iget-object v1, p0, Lcom/twitter/android/du;->a:Lcom/twitter/android/ListsActivity;

    iget-object v2, p0, Lcom/twitter/android/du;->a:Lcom/twitter/android/ListsActivity;

    iget-object v2, v2, Lcom/twitter/android/ListsActivity;->h:Lcom/twitter/android/client/i;

    iget-object v3, p0, Lcom/twitter/android/du;->a:Lcom/twitter/android/ListsActivity;

    iget-wide v3, v3, Lcom/twitter/android/ListsActivity;->a:J

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/twitter/android/du;->a:Lcom/twitter/android/ListsActivity;

    invoke-virtual {v6, v0}, Lcom/twitter/android/ListsActivity;->a(I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/twitter/android/client/i;->b(JII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/ListsActivity;->a(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/twitter/android/du;->a:Lcom/twitter/android/ListsActivity;

    invoke-virtual {v1, v0}, Lcom/twitter/android/ListsActivity;->d(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/du;->a:Lcom/twitter/android/ListsActivity;

    const v1, 0x7f09005e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
