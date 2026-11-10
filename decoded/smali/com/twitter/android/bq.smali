.class final Lcom/twitter/android/bq;
.super Lcom/twitter/android/client/m;


# instance fields
.field private synthetic a:Lcom/twitter/android/MessagesActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/MessagesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/bq;->a:Lcom/twitter/android/MessagesActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/MessagesActivity;Lcom/twitter/android/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/bq;-><init>(Lcom/twitter/android/MessagesActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;II)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/bq;->a:Lcom/twitter/android/MessagesActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/MessagesActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/bq;->a:Lcom/twitter/android/MessagesActivity;

    iget v0, v0, Lcom/twitter/android/cj;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/MessagesActivity;->d(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/bq;->a:Lcom/twitter/android/MessagesActivity;

    const v1, 0x7f090059

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public final e(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/bq;->a:Lcom/twitter/android/MessagesActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/MessagesActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/twitter/android/bq;->a:Lcom/twitter/android/MessagesActivity;

    iget v0, v0, Lcom/twitter/android/cj;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/MessagesActivity;->d(I)V

    const/16 v0, 0xc8

    if-eq p3, v0, :cond_0

    const/16 v0, 0x194

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/bq;->a:Lcom/twitter/android/MessagesActivity;

    const v1, 0x7f09005c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
