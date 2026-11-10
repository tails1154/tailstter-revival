.class final Lcom/twitter/android/ac;
.super Lcom/twitter/android/client/m;


# instance fields
.field private synthetic a:Lcom/twitter/android/SearchTabActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/SearchTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ac;->a:Lcom/twitter/android/SearchTabActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/SearchTabActivity;Lcom/twitter/android/aj;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/ac;-><init>(Lcom/twitter/android/SearchTabActivity;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/twitter/android/ac;->a:Lcom/twitter/android/SearchTabActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SearchTabActivity;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ac;->a:Lcom/twitter/android/SearchTabActivity;

    const v1, 0x7f09011f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/twitter/android/ac;->a:Lcom/twitter/android/SearchTabActivity;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/twitter/android/SearchTabActivity;->a(Lcom/twitter/android/SearchTabActivity;I)I

    :cond_0
    return-void
.end method

.method public final c(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/ac;->a:Lcom/twitter/android/SearchTabActivity;

    const v1, 0x7f090121

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/twitter/android/ac;->a:Lcom/twitter/android/SearchTabActivity;

    invoke-static {v0, v2}, Lcom/twitter/android/SearchTabActivity;->a(Lcom/twitter/android/SearchTabActivity;I)I

    invoke-super {p0, p1, p2, p3, p4}, Lcom/twitter/android/client/m;->c(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
