.class final Lcom/twitter/android/aa;
.super Lcom/twitter/android/client/m;


# instance fields
.field private synthetic a:Lcom/twitter/android/SULActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/SULActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/aa;->a:Lcom/twitter/android/SULActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/SULActivity;Lcom/twitter/android/ag;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/aa;-><init>(Lcom/twitter/android/SULActivity;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/aa;->a:Lcom/twitter/android/SULActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/SULActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    if-lez p5, :cond_1

    iget-object v1, p0, Lcom/twitter/android/aa;->a:Lcom/twitter/android/SULActivity;

    iget-object v1, v1, Lcom/twitter/android/SULActivity;->j:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/aa;->a:Lcom/twitter/android/SULActivity;

    invoke-virtual {v0}, Lcom/twitter/android/SULActivity;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/twitter/android/aa;->a:Lcom/twitter/android/SULActivity;

    iget v0, v0, Lcom/twitter/android/cj;->b:I

    invoke-virtual {v1, v0}, Lcom/twitter/android/SULActivity;->d(I)V

    goto :goto_0
.end method
