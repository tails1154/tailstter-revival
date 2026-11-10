.class final Lcom/twitter/android/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/twitter/android/ListCreateEditActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/ListCreateEditActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/ar;->b:Lcom/twitter/android/ListCreateEditActivity;

    iput p2, p0, Lcom/twitter/android/ar;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget v0, p0, Lcom/twitter/android/ar;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/ar;->b:Lcom/twitter/android/ListCreateEditActivity;

    invoke-static {v0}, Lcom/twitter/android/ListCreateEditActivity;->a(Lcom/twitter/android/ListCreateEditActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ar;->b:Lcom/twitter/android/ListCreateEditActivity;

    invoke-virtual {v0}, Lcom/twitter/android/ListCreateEditActivity;->finish()V

    goto :goto_0
.end method
